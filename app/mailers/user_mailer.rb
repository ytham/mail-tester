class UserMailer < ActionMailer::Base
  default from: "ufg@happywalr.us"

  def welcome_email(user)
    @user = user
    email_with_name = "#{@user.name} <#{@user.email}>"
    @url = "http://www.facethelight.com"
    mail(to: email_with_name, 
         subject: "Face The Light",
         template_path: 'notifications',
         template_name: 'another')
  end

  def receive(email)
  end
end
