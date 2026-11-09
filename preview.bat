@echo off
echo Starting local portfolio preview server...
echo Open your browser at http://localhost:8000/blog.html
where python >nul 2>nul
if %ERRORLEVEL% equ 0 (
    start http://localhost:8000/blog.html
    python -m http.server 8000
) else (
    echo Python not found, opening blog.html directly...
    start blog.html
)
