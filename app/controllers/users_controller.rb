class UsersController < ApplicationController


    def index
        users = User.all 
        render json: users
        
    end


    def show
        user = User.find_by(username:params[:id])
        render json: user
    end

    def new
    end

    def create
        user = User.create(user_params)
    end

    def delete
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password_digest, :bio, :location)
    end



    

    
end

