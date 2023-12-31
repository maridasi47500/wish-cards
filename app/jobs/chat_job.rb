class ChatJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    @msg=args[0]
    ActionCable.server.broadcast("chat_#{@msg.room.name}", { sent_by: "#{@msg.sent_by} (#{@msg.user.email})", body: @msg.body })
  end
end
