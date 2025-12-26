@echo off
echo ========================================
echo    Interactive Portfolio - Git Setup
echo ========================================
echo.

REM Check if Git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Git is not installed or not in PATH
    echo Please install Git from: https://git-scm.com/download/win
    echo.
    pause
    exit /b 1
)

echo Git is installed! Proceeding with setup...
echo.

REM Initialize Git repository
echo [1/6] Initializing Git repository...
git init

REM Configure Git (you'll need to update these with your details)
echo [2/6] Configuring Git user...
echo Please enter your Git username:
set /p username="Username: "
git config user.name "%username%"

echo Please enter your Git email:
set /p email="Email: "
git config user.email "%email%"

REM Add all files
echo [3/6] Adding files to Git...
git add .

REM Create initial commit
echo [4/6] Creating initial commit...
git commit -m "Initial commit: Interactive Portfolio Website

Features:
- Modern responsive design with glassmorphism effects
- Interactive animations and smooth scrolling
- Dynamic typing effect and animated skill bars
- Mobile-responsive navigation
- Contact form with validation
- Performance optimized with lazy loading
- Cross-browser compatibility

Tech Stack: HTML5, CSS3, Vanilla JavaScript"

echo [5/6] Repository setup complete!
echo.
echo [6/6] Next steps:
echo 1. Create a repository on GitHub/GitLab/Bitbucket
echo 2. Copy the remote repository URL
echo 3. Run the following commands:
echo.
echo    git remote add origin YOUR_REPOSITORY_URL
echo    git branch -M main
echo    git push -u origin main
echo.
echo Example:
echo    git remote add origin https://github.com/yourusername/interactive-portfolio.git
echo    git branch -M main
echo    git push -u origin main
echo.
echo ========================================
echo    Setup Complete! 🚀
echo ========================================
pause


