bin/bundle exec rake db:setup #ENV[dev, test]debTB作成、schema&seeds読み込み
bin/bundle exec rake db:setup RAILS_ENV=production#TB作成、schema&seeds読み込み

bin/rails g controller admin/top index  
bin/rails g controller staff/top index 
bin/rails g controller worker/top index                          
