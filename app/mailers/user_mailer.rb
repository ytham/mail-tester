class UserMailer < ActionMailer::Base
  default from: "ufg@happywalr.us"

  def welcome(user)
    @user = user
    email_address_with_name = "#{@user.name} <#{@user.email}>"
    @url = "http://www.facethelight.com"
    mail(to: email_address_with_name, 
         subject: "Face The Light"
         #template_path: 'notifications',
         #template_name: 'another')
        ) do |format|
          format.text
          format.html
        end
  end

  def receive(email)
  end
end
