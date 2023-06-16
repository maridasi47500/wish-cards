import consumer from "channels/consumer"
var roomname=$("[data-chat-room]").data("chat-room");
var chat1Channel=consumer.subscriptions.create({ channel: "MessageChannel", room: roomname }, {
	  received(data) {
		      this.appendLine(data)
		    },

	  appendLine(data) {
		      const html = this.createLine(data)
		      console.log("#message_"+data['id'])
		      const element = document.querySelector("#message_"+data['id'])
		      element.outerHTML=html;
		    },

	  createLine(data) {
		      return data.message		    }
})
chat1Channel.send({message:""})
