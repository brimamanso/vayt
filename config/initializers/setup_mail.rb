ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address              => 'smtp.sendgrid.net',
    :port                 => '587',
    :domain               => 'heroku.com',
    :user_name            => 'app91578525@heroku.com',
    :password             => 'uekwhijf1811',
    :authentication       => 'plain',
    :enable_starttls_auto => true
}

