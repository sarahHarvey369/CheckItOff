class SessionsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by_email_and_password(params[:email], params[:password])
        if @user 
            session[:user_id] = @user.id
            redirect_to '/users/:user_id/assignments'
        else
            render 'sessions#new'
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to '/', notice: "Logged out!"
    end
end
