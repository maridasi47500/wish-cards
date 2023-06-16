class MessageJob < ApplicationJob
  queue_as :default

  def perform(*args)
    @message=args[0]
    rendered_string = ApplicationController.renderer.render(
      partial: 'messages/message',
      locals: { message: @message }
    )
    ActionCable.server.broadcast("message_#{@message.room.name}", { id:@message.id,message: rendered_string })
    # Do something later
  end
end
