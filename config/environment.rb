# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
	:address => 'smtp.sendgrid.net',
	:port => '587',
	:authentication => :plain,
	:user_name => "app83040411@heroku.com",
	:password => "qbwy8j6u2715",
	:domain => 'heroku.com',
	:enable_starttls_auto => true
}