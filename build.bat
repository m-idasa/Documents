@echo off
SETLOCAL

:: مسیر پروژه
SET PROJECT_DIR=C:\Users\f.asadi\Documents\docs

:: چک کردن Ruby
ruby -v >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Ruby روی سیستم نصب نیست. لطفا اول Ruby را نصب کنید.
    pause
    exit /b 1
)

:: چک کردن Bundler
gem list bundler -i >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Bundler نصب نیست. در حال نصب Bundler...
    gem install bundler
)

:: رفتن به مسیر پروژه
cd /d "%PROJECT_DIR%"

:: نصب تمام gem ها
echo Installing gems from Gemfile...
bundle install

:: Build سایت
echo Building Jekyll site...
bundle exec jekyll build

:: نمایش مسیر خروجی
echo Build completed! خروجی در فولدر _site موجود است:
echo %PROJECT_DIR%\_site

pause
ENDLOCAL
