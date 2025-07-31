# 🔧 Quick Fix for CORS Error

The error you're seeing is because you need to set up the Google Apps Script web app first. Here's how to fix it:

## Step 1: Set Up Google Apps Script (5 minutes)

1. **Go to Google Apps Script**
   - Open: https://script.google.com/
   - Sign in with your Google account

2. **Create New Project**
   - Click "New Project"
   - Rename it to "Student Marks Sync"

3. **Copy the Script**
   - Delete the default code
   - Copy ALL the content from `google_sheets_sync.gs` file
   - Paste it into the editor

4. **Save the Project**
   - Press Ctrl+S or click the save icon
   - Name it "Student Marks Sync"

## Step 2: Deploy as Web App (3 minutes)

1. **Deploy**
   - Click "Deploy" → "New deployment"
   - Choose "Web app"
   - Set options:
     - **Execute as**: "Me"
     - **Who has access**: "Anyone"
   - Click "Deploy"

2. **Authorize**
   - Click "Authorize access"
   - Choose your account
   - Click "Advanced" → "Go to [Project Name] (unsafe)"
   - Click "Allow"

3. **Copy the Web App URL**
   - You'll get a URL like: `https://script.google.com/macros/s/AKfycbz.../exec`
   - **Copy this URL** - you'll need it!

## Step 3: Configure Your App (2 minutes)

1. **Open your Student Marks Manager**
   - Open `student_marks_manager.html` in your browser

2. **Set the Web App URL**
   - Click "Manual Sync Now"
   - Paste the web app URL you copied
   - Click OK

3. **Test it**
   - Add a test student
   - Click "Manual Sync Now" again
   - Check your Google Sheet - data should appear!

## Step 4: Enable Auto-Sync (Optional)

- Check "Enable Auto-Sync to Google Sheets"
- Now every change will automatically sync!

## 🚨 If You Still Get CORS Error

The error means you're trying to access the Google Sheet directly instead of the web app. Make sure:

1. You're using the **web app URL** (starts with `https://script.google.com/macros/s/`)
2. **NOT** the Google Sheet URL (starts with `https://docs.google.com/spreadsheets/`)

## Test Your Setup

Use `test_sync.html` to verify everything works:

1. Open `test_sync.html`
2. Paste your web app URL
3. Click "Test Connection"
4. Click "Test Sync"
5. Check your Google Sheet for test data

## Your Google Sheet Details

- **Sheet ID**: `1vKa94iz0uFpvkKKgHBQgWWHcncsjtZOw7coX2eYMgLI`
- **URL**: https://docs.google.com/spreadsheets/d/1vKa94iz0uFpvkKKgHBQgWWHcncsjtZOw7coX2eYMgLI/edit

The script will automatically update this sheet with your student data! 