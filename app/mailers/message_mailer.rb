class MessageMailer < ApplicationMailer
  def new_message(message)
    @message = message
    mail(
      subject: "New Message from #{message.name}"
    )
  end
end
