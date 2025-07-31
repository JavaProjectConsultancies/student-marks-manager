// Google Apps Script for Student Marks Manager
// Deploy this as a web app to sync data with your existing Google Sheet

function doPost(e) {
  try {
    // Get the existing spreadsheet
    const spreadsheetId = '1vKa94iz0uFpvkKKgHBQgWWHcncsjtZOw7coX2eYMgLI';
    const spreadsheet = SpreadsheetApp.openById(spreadsheetId);
    const sheet = spreadsheet.getActiveSheet();
    
    // Parse the incoming data - handle both JSON and form data
    let data;
    let students;
    
    if (e.postData.type === 'application/json') {
      // JSON data
      data = JSON.parse(e.postData.contents);
      students = data.students;
    } else {
      // Form data
      const formData = e.parameter;
      if (formData.data) {
        data = JSON.parse(formData.data);
        students = data.students;
      } else {
        throw new Error('No data received');
      }
    }
    
    // Clear existing data (except header)
    const lastRow = sheet.getLastRow();
    if (lastRow > 1) {
      sheet.getRange(2, 1, lastRow - 1, 7).clear();
    }
    
    // Add header if not exists
    if (lastRow === 0) {
      sheet.getRange(1, 1, 1, 7).setValues([['Student Name', 'Student ID', 'Subject', 'Marks', 'Grade', 'Percentage', 'Date']]);
    }
    
    // Add new data
    if (students && students.length > 0) {
      const dataToAdd = students.map(student => [
        student.name,
        student.id,
        student.subject,
        student.marks,
        student.grade,
        student.percentage + '%',
        new Date(student.date).toLocaleDateString()
      ]);
      
      sheet.getRange(2, 1, dataToAdd.length, 7).setValues(dataToAdd);
    }
    
    // Return success response
    return ContentService
      .createTextOutput(JSON.stringify({ success: true, message: 'Data synced successfully' }))
      .setMimeType(ContentService.MimeType.JSON);
      
  } catch (error) {
    // Return error response
    return ContentService
      .createTextOutput(JSON.stringify({ success: false, error: error.toString() }))
      .setMimeType(ContentService.MimeType.JSON);
  }
}

function doGet(e) {
  // Simple test endpoint
  return ContentService
    .createTextOutput('Student Marks Manager Sync Service is running')
    .setMimeType(ContentService.MimeType.TEXT);
}

// Function to manually sync data (for testing)
function manualSync() {
  const spreadsheetId = '1vKa94iz0uFpvkKKgHBQgWWHcncsjtZOw7coX2eYMgLI';
  const spreadsheet = SpreadsheetApp.openById(spreadsheetId);
  const sheet = spreadsheet.getActiveSheet();
  
  // Add some test data
  const testData = [
    ['John Doe', 'ST001', 'Mathematics', 85, 'A', '85%', '2024-01-15'],
    ['Jane Smith', 'ST002', 'Physics', 92, 'A+', '92%', '2024-01-15']
  ];
  
  sheet.getRange(1, 1, 1, 7).setValues([['Student Name', 'Student ID', 'Subject', 'Marks', 'Grade', 'Percentage', 'Date']]);
  sheet.getRange(2, 1, testData.length, 7).setValues(testData);
  
  Logger.log('Manual sync completed');
} 