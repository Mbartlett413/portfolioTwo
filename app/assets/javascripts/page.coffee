# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


document.addEventListener 'turbolinks:load', (event) ->
	emailInput = document.getElementById('emailInput');
	messageInput = document.getElementById('messageInput');
	aboutInput = document.getElementById('aboutInput');
	submitBtn = document.getElementById('submitBtn');

	submitBtn.onclick = ->
		console.log("email", emailInput.value)
		console.log("message", messageInput.value)
		console.log("about", aboutInput.options[aboutInput.selectedIndex].text)

		$.post '/hello_email_connect',
			email: emailInput.value,
			message: messageInput.value,
			interest: aboutInput.options[aboutInput.selectedIndex].text

