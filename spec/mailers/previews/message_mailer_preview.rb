# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/new_message
  def new_message
    message = Message.first
    MessageMailer.new_message(message)
  end

end
