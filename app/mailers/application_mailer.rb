class ApplicationMailer < ActionMailer::Base
  default from: ENV["MYEMAIL"]
  layout "mailer"
end
