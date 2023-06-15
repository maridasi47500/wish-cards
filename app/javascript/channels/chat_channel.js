import consumer from "channels/consumer"
var roomname=$("[data-chat-room]").data("chat-room");
var chatChannel=consumer.subscriptions.create({ channel: "ChatChannel", room: roomname }, {
	  received(data) {
		      this.appendLine(data)
		    },

	  appendLine(data) {
		      const html = this.createLine(data)
		      const element = document.querySelector("[data-chat-room='"+roomname+"']")
		      element.insertAdjacentHTML("beforeend", html)
		    },

	  createLine(data) {
		      return `
		      <div id="message_${data["id"]}">
		            <article class="chat-line">
			            <span class="speaker">${data["sent_by"]}</span>
				            <span class="body">${data["body"]}</span>
					          </article>
					          <a href="/messages/${data["id"]}/edit">edit</a>
					          </div>
						      `
		    }
})
chatChannel.send({ sent_by: "Paul", body: "This is a cool chat app." })
