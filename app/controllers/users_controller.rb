class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.create(params.permit(:email, :password))
        session[:user_id] = @user.id
        redirect_to '/users/:user_id/assignments'
    end

end
