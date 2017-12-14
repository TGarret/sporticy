# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
	:address => 'smtp.sendgrid.net',
	:port => '587',
	:authentication => :plain,
<<<<<<< HEAD
	:user_name => ENV["SENDGRID_USERNAME"],
	:password => ENV['SENDGRID_PASSWORD'],
=======
	:user_name => "app83040411@heroku.com",
	:password => "qbwy8j6u2715",
>>>>>>> b491cc2d1ced980c0bfd709b2c4e950108cba259
	:domain => 'heroku.com',
	:enable_starttls_auto => true
}