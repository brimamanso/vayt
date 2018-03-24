ActionMailer::Base.delivery_method = smtp
ActionMailer::Base.smtp_settings = {
  :address          => 'smtp.sendgrid.net',
  :port             => '587',
  :authentication   => :plain,
  :user_name        => 'app91578525@heroku.com',
  :password         => 'uekwhijf1811',
  :domain           => 'heroku.com',
  :enable_starttls_auto => true 
}
