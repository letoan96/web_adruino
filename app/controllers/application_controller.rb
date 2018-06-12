class ApplicationController < ActionController::Base
	require "socket"
  protect_from_forgery with: :exception
  include SessionsHelper

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in first!!!"
      redirect_to login_url
    end  
  end

  def start_adruino_server
  	server = TCPServer.open("10.41.2.52" , 2000) unless server 
  	client = server.accept
  end

end
