class UserMailer < ApplicationMailer

	def hello_email(email,message,interest)
		@email = email
		@message = message
		@interest = interest
		mail(to: 'Mbartlett413@me.com', subject: 'Welcome to the Danger Zone')
	end 
end
