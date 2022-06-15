ActionMailer::Base.smtp_settings = {
    :port      => 465,
    :user_name => ENV['USERNAME'],
    :password  => ENV['SENDGRID_PASSWORD'],
    :domain    => ENV['DOMAIN'],
    :address   => 'smtp.sendgrid.net',
    :authentication => :plain,
    :enable_starttls_auto => true
  }
ActionMailer::Base.delivery_method = :smtp
