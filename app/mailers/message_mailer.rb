class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.new_message.subject
  #
  def new_message(message)
    @adminEmail = Admin.first.email
    @message = message
    mail to: @adminEmail,
         subject: "New Message from #{@message.name} on MillerStearns.com"
  end
end
