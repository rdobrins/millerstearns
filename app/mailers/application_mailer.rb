class ApplicationMailer < ActionMailer::Base
  @adminEmail = Admin.first.email
  default from: @adminEmail
  layout 'mailer'
end
