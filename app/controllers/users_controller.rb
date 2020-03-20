class UsersController < ApplicationController


    def index
        playlists = User.all 
        
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


playlist = Playlist.create(playlist_params)
render json: playlist   
end

def delete
end

private
def playlist_params
params.require(:playlist).permit(:name, :user_id)
end