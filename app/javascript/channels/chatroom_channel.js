import consumer from "./consumer";
import { scrollBottom, clearInputText } from "../packs/application";

consumer.subscriptions.create("ChatroomChannel", {
	connected() {
		// Called when the subscription is ready for use on the server
	},

	disconnected() {
		// Called when the subscription has been terminated by the server
	},

	received(data) {
		// Called when there's incoming data on the websocket for this channel
		// alert(data.foo);
		const htmlElement = $("#messages-container");
		htmlElement.append(data.message);
		scrollBottom();
		clearInputText();
		// if writing the previous line with document.getElementById() will return as a string instead of HTML
	},
});
