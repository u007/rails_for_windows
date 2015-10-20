rem https://github.com/rubygems/rubygems/releases/tag/v2.0.15
rem wget --no-check-certificate https://github.com/rubygems/rubygems/releases/download/v2.0.15/rubygems-update-2.0.15.gem -O update/rubygems-update-2.0.15.gem
gem install -f update/rubygems-update-2.0.15.gem
update_rubygems --no-ri --no-rdoc
gem uninstall rubygems-update -x
rem echo uninstalling all gems
rem ruby -e "`gem list`.split(/$/).each { |line| puts `gem uninstall -Iax #{line.split(' ')[0]}` unless line.empty? }"
