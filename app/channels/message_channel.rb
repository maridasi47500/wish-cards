class MessageChannel < ApplicationCable::Channel
  def subscribed
            stream_from "message_#{params[:room]}"
                      end
    def receive(data)
              ActionCable.server.broadcast("message_#{params[:room]}", data)
                        end
end
