class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users
    end

    def show
        user = User.find_by(nickname: params['nickname'])
        render json: user
    end

    def create
        byebug
        if User.find_by(nickname: params['nickname']) == nil
            user = User.create(user_params)
            render json: { message: 'user successfully created' }
        else
            render json: {message: 'user already exixsts'}
        end
    end

    private
    def user_params
        params.require(:user).permit(:nickname)
    end

end
