class SessionController < ApplicationController
  def new
  end

  def create
  	form_email = params[:formulaire_login][:email]
  	form_password = params[:formulaire_login][:password]
  	user = User.find_by(email:form_email)
  	if user && user.authenticate(form_password)
  		log_in(user)
  		puts "MARCHE !!"
  		puts session[:user_id]
  		redirect_to users_path
  		#Create the session
  	else
  		render "new"
  	end

  end

 	def destroy
 		log_out
 		redirect_to login_path
  end

end
