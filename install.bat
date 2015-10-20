@echo off
echo First, install RUBY 2.1 Windows version of rails from http://railsinstaller.org/en
echo Press ctrl+c if you have not installed.
echo Requires to restart command prompt if you have started command prompt before install rails.
echo For more info, visit: http://mercstudio-tech.blogspot.my/2015/04/iis-7-and-rails.html
pause
echo Fixing cert

fix-cert

echo Fixing no doc
echo gem: --no-document > %HOMEPATH%\.gemrc

fix-mysql

rem Min version for gems due to windows:
rem echo gem 'eventmachine', '>=1.0.7'

rem echo gem 'bcrypt', '>= 3.1.10'
rem echo 
gem 'mysql2', '>=0.3.18'
gem install bcrypt
gem install thin
gem install thin_service
gem install rails -v '4.2.4'

