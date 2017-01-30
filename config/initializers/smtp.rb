ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  user_name: ENV['GMAIL_ADDRESS'],
  password: ENV['GMAIL_APP_PASSWORD'],
  authentication: 'plain',
  openssl_verify_mode: 'none'
}
