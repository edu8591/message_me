// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";

import "bootstrap";
import "@fortawesome/fontawesome-free/css/all";

export const scrollBottom = function () {
	if ($("#messages-container").length > 0) {
		$("#messages-container").scrollTop(
			$("#messages-container")[0].scrollHeight
		);
	}
};

export const clearInputText = () => {
	document.querySelector(".btn-warning").addEventListener("click", function () {
		document.getElementById("message_body").value = "";
	});
};

$(document).on("turbolinks:load", function () {
	scrollBottom();
	clearInputText();
});

Rails.start();
Turbolinks.start();
ActiveStorage.start();
