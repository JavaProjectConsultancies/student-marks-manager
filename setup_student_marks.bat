@echo off
echo.
echo ========================================
echo    Student Marks Manager - Setup
echo ========================================
echo.
echo Opening Student Marks Manager...
echo.

REM Check if the HTML file exists
if exist "student_marks_manager.html" (
    echo Found student_marks_manager.html
    echo Opening in default browser...
    start "" "student_marks_manager.html"
    echo.
    echo Application opened successfully!
    echo.
    echo Features available:
    echo - Add student marks
    echo - Edit existing records
    echo - Export to Excel
    echo - Publish to Google Sheets
    echo - Generate reports
    echo.
    echo Press any key to exit...
    pause >nul
) else (
    echo ERROR: student_marks_manager.html not found!
    echo.
    echo Please ensure the file is in the same directory as this script.
    echo.
    echo Press any key to exit...
    pause >nul
) 