class Notifier < ApplicationMailer
  def welcome_mail(emails, subject)
    mail(to: emails, subject: subject)
  end
end
