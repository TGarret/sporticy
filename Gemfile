source 'https://rubygems.org'

gem 'rails'
gem 'bcrypt' #permt d'utiliser la fonction has_secure_password dans mon model user
gem 'bootstrap-sass'  #ajout du css avec les classe deja pret
gem 'puma'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'devise'
gem 'devise-i18n'
gem 'rails-i18n'
gem 'toastr-rails'
gem 'font-awesome-sass'
gem 'paperclip-cloudinary' #permet de mettre les photos sur le cloud pour que l'app tourne quand elle est sur heroku
gem 'geocoder'
gem 'jquery-ui-rails'
gem 'ransack'
gem 'rails-timeago'
gem 'paperclip', :git=> 'https://github.com/thoughtbot/paperclip', :ref => '523bd46c768226893f23889079a7aa9c73b57d68'



group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem "better_errors"
  gem "binding_of_caller"
end

group :test do
  gem 'rails-controller-testing'
  gem 'minitest-reporters'
  gem 'guard'
  gem 'guard-minitest'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
