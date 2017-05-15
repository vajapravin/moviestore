require File.expand_path('../application', __FILE__)

# 'Etsa Sync 4am'
every 1.day, at: '00:00 am' do
  rake "-s dev:moviestore"
end

# config/schedule.rb
every 1.day, :at => '5:00 am' do
  rake "-s sitemap:refresh"
end