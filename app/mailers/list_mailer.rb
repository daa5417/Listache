class ListMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.list.email_list.subject
  #
  def email_list(list, sender_email, to_email, message)
    @list = list
    @message = message
    @sender = sender_email
    mail to: to_email, subject: "You've been sent a new List!"
  end
end
