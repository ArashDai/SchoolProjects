class SessionsController < ApplicationController

    def new
    end

    def create
			@user = User.find_by_email(params[:session][:email])
			if @user && @user.authenticate(params[:session][:password])
				session[:user_id] = @user.id
				redirect_to "/dashboard/#{@user.id}"
			else
				redirect_to 'login'
			end 
		end

    def destroy 
			puts 'destruction'
			puts session
			session[:user_id] = nil 
			redirect_to '/' 
		end
end
