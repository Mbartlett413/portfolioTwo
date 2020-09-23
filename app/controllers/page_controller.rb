class PageController < ApplicationController
	protect_from_forgery prepend: true

	def index
		
	end 

	def hello_email_connect
		logger.debug("THIS IS IT #{params}")
		UserMailer.hello_email(params['email'], params['message'], params['interest']).deliver_now
	end 
end
