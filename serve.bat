@echo off
REM === Jekyll Local Server Start Script ===
cd /d C:\Projects\Joogba.github.io

echo Starting Jekyll server with livereload + trace...
bundle exec jekyll serve --livereload --trace

pause
