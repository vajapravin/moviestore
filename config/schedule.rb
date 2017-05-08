require File.expand_path('../application', __FILE__)

# 'Etsa Sync 4am'
every 1.day, at: '00:00 am' do
  runner 'SeedrWorker.perform_async'
end