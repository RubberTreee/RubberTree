class RegistrationMailer < ApplicationMailer
  default from: 'no-reply@rubbertreee.com',
          subject: 'Thanks for registering your interest!'
  layout 'mailer'

  def welcome(recipient)
    @prospect = recipient
    mail(to: recipient.email)
  end
end
