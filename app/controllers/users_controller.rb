class UsersController < ApplicationController

    def sign_in
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
          render json: { username: user.username, token: generate_token(id: user.id) }
        else
          render json: { error: "Username or Password is invalid "}
        end
    end

    def validate
        if get_user
          render json: { username: get_user.username, token: generate_token(id: get_user.id)}
        else
          render json: { error: "You are not authorized" }
        end
    end
    def index
        users = User.all 
        render json: users
        
    end


    def show
        user = User.find_by(params[:username])
        render json: user
    end

    def new
    end

    def create
        user = User.create(user_params)
        if user.valid?
            data = {user_id: user.id}
            token = generate_token(data) 
            render json: {user: user,jwt: token}
        else
            render json: {errors: user.errors.full_messages}, status: :not_acceptable
        end
    end

    def delete
    end

    private

    def user_params
        params.require(:user).permit(:username,:password_digest,)
    end



    

    
end

