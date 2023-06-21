class UserMailer < ApplicationMailer
  default from: ENV["MYEMAIL"]

  def welcome_email
    @card = params[:message]

    attachments.inline["mypic.png"]=File.read(Rails.root.join("public","mypic.png"))
    if @card.image
      attachments.inline[@card.image]=File.read(Rails.root.join("public","uploads",@card.image))
    end
    if @card.music
      attachments.inline[@card.music]=File.read(Rails.root.join("public","uploads",@card.music))
    end
    @card.pics.each do |pic|
      attachments.inline[pic.filename]=File.read(Rails.root.join("public","uploads",pic.filename))
    end
    mail(to: params[:email], subject: params[:title])
  end
end
