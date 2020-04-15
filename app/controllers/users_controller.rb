class UsersController < ApplicationController
    def index
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(params.permit(:email, :password))
        session[:user_id] = @user.id
        redirect_to '/users/:user_id/assignments'
    end

    # def create
    #     @user = User.new(user_params)

    #     if @user.save
    #         redirect_to '/'
    #     else
    #         redirect_to user_assignments_path
    #     end
    # end

end
