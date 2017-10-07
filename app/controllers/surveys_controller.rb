class SurveysController < ApplicationController
  def result
  	render '/surveys/result.html.erb'
  end

  def index
  	render '/surveys/index.html.erb'
  end

  def add_user
  	if session.key?("count") == false
  		session[:count]=1
  	else 
  	 	session[:count] += 1
  	end

  	session[:name] = params[:name]
  	session[:location] = params[:location]
  	session[:language] = params[:language]
  	session[:comment] = params[:comment]
  	
  	flash[:count] = session[:count]

  	redirect_to "/result"
  end



end
