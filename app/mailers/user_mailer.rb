class UserMailer < ApplicationMailer

  def welcome_email(mail)
    @url  = 'http://example.com/login'
    mail(to: mail, subject: 'Welcome to My Awesome Site')
  end

end
