class UserMailer < ApplicationMailer
  default from: ENV["MYEMAIL"]

  def welcome_email
    @card = params[:message]
    mail(to: params[:email], subject: params[:subject])
  end
end
