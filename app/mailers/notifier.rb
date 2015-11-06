class Notifier < ActionMailer::Base
  default from: '"SamePinch" < hello@samepinch.co >'
  default from_name: "SamePinch"

  layout 'mailer'

  def welcome_mail(emails, subject)
    mail(to: emails, subject: subject)
  end
end