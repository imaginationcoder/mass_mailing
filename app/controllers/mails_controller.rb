class MailsController < ApplicationController
  def new
  end

  def send_m_mail
    subject= params["subject"]
    emails = params["emails"].split(',').map(&:strip)
    emails.each do |email|
      Notifier.welcome_mail(email, subject).deliver
    end
    flash[:notice] = 'Successfully sent emails'
    redirect_to root_url
  end
end
