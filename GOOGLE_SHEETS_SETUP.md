# Google Sheets Sync Setup Guide

This guide will help you set up automatic syncing between your Student Marks Manager and your existing Google Sheet.

## Step 1: Set Up Google Apps Script

1. **Go to Google Apps Script**
   - Visit: https://script.google.com/
   - Sign in with your Google account (the same account that owns the Google Sheet)

2. **Create New Project**
   - Click "New Project"
   - Rename the project to "Student Marks Manager Sync"

3. **Copy the Script Code**
   - Delete the default `myFunction()` code
   - Copy and paste the entire content from `google_sheets_sync.gs` into the editor

4. **Save the Project**
   - Click the save icon or press Ctrl+S
   - Give it a name like "Student Marks Manager Sync"

## Step 2: Deploy as Web App

1. **Deploy the Script**
   - Click "Deploy" → "New deployment"
   - Choose "Web app" as the type
   - Set the following options:
     - **Execute as**: "Me" (your Google account)
     - **Who has access**: "Anyone" (for now, we'll secure it later)
   - Click "Deploy"

2. **Authorize the App**
   - Click "Authorize access"
   - Choose your Google account
   - Click "Advanced" → "Go to [Project Name] (unsafe)"
   - Click "Allow"

3. **Get the Web App URL**
   - After deployment, you'll get a URL like:
     `https://script.google.com/macros/s/AKfycbz.../exec`
   - Copy this URL - you'll need it for the next step

## Step 3: Configure Your HTML App

1. **Open your Student Marks Manager**
   - Open `student_marks_manager.html` in your browser

2. **Set Up the Web App URL**
   - Click "Manual Sync Now" button
   - When prompted, paste the Google Apps Script web app URL you copied
   - Click OK

3. **Test the Sync**
   - Add a test student record
   - Click "Manual Sync Now" again
   - Check your Google Sheet to see if the data appears

## Step 4: Enable Auto-Sync (Optional)

1. **Enable Auto-Sync**
   - Check the "Enable Auto-Sync to Google Sheets" checkbox
   - Now every time you add, edit, or delete a student, it will automatically sync to your Google Sheet

## Troubleshooting

### Common Issues:

1. **"Sync error: Access denied"**
   - Make sure you're using the same Google account for both the script and the sheet
   - Check that the script has permission to access the sheet

2. **"Network error: Failed to fetch"**
   - Check your internet connection
   - Make sure the web app URL is correct
   - Try refreshing the page and re-entering the URL

3. **Data not appearing in the sheet**
   - Check the Google Apps Script logs (View → Execution log)
   - Make sure the spreadsheet ID in the script matches your sheet

### Security Note:
For production use, you should:
1. Set "Who has access" to "Only myself" in the web app settings
2. Add authentication to the web app
3. Use environment variables for sensitive data

## Your Google Sheet Details

- **Sheet ID**: `1vKa94iz0uFpvkKKgHBQgWWHcncsjtZOw7coX2eYMgLI`
- **URL**: https://docs.google.com/spreadsheets/d/1vKa94iz0uFpvkKKgHBQgWWHcncsjtZOw7coX2eYMgLI/edit

The script will automatically:
- Clear existing data (except headers)
- Add new student records
- Format dates and percentages
- Handle errors gracefully

## Testing the Setup

1. Add a few test students in your HTML app
2. Click "Manual Sync Now"
3. Check your Google Sheet - you should see the data appear
4. Enable auto-sync and make changes to test automatic updates

## Support

If you encounter any issues:
1. Check the browser console for JavaScript errors
2. Check the Google Apps Script execution logs
3. Verify the web app URL is correct
4. Ensure your Google account has access to both the script and the sheet 