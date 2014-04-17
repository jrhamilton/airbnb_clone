class UserMailer < ActionMailer::Base
  default from: "no_reply@airbnb_clone.com"

  def welcome_message(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to our airbnb clone')
  end
end
