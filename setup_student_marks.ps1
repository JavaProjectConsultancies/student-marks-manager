# Student Marks Manager - Setup Script
# PowerShell version for better compatibility

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "    Student Marks Manager - Setup" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$htmlFile = "student_marks_manager.html"

# Check if the HTML file exists
if (Test-Path $htmlFile) {
    Write-Host "✓ Found $htmlFile" -ForegroundColor Green
    Write-Host "Opening Student Marks Manager in default browser..." -ForegroundColor Yellow
    
    try {
        Start-Process $htmlFile
        Write-Host ""
        Write-Host "✓ Application opened successfully!" -ForegroundColor Green
        Write-Host ""
        Write-Host "Available Features:" -ForegroundColor Cyan
        Write-Host "• Add student marks and information" -ForegroundColor White
        Write-Host "• Edit existing student records" -ForegroundColor White
        Write-Host "• Export data to Excel (CSV format)" -ForegroundColor White
        Write-Host "• Publish to Google Sheets" -ForegroundColor White
        Write-Host "• Generate comprehensive reports" -ForegroundColor White
        Write-Host "• Print result sheets" -ForegroundColor White
        Write-Host "• Real-time statistics and analytics" -ForegroundColor White
        Write-Host ""
        Write-Host "📊 Excel-like interface with Google Sheets integration!" -ForegroundColor Magenta
        Write-Host ""
    }
    catch {
        Write-Host "✗ Error opening the application: $($_.Exception.Message)" -ForegroundColor Red
        Write-Host "Try opening the HTML file manually in your browser." -ForegroundColor Yellow
    }
}
else {
    Write-Host "✗ ERROR: $htmlFile not found!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please ensure the file is in the same directory as this script." -ForegroundColor Yellow
    Write-Host "Current directory: $(Get-Location)" -ForegroundColor Gray
    Write-Host ""
    Write-Host "Files in current directory:" -ForegroundColor Cyan
    Get-ChildItem -Name "*.html" | ForEach-Object { Write-Host "  $_" -ForegroundColor White }
    Write-Host ""
}

Write-Host "Press any key to exit..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") 