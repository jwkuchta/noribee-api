class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users, except: [:access_token, :user_id, :sub]
    end

    def show
        user = User.find_by(user_id: params['user_id'])
        render json: user
    end

    def create
        user = User.create(user_params)
        if user.valid?
            render json: { message: 'user successfully created' }
        else
            render json: { message: 'user already exists' }
        end
    end

    private
    def user_params
        params.require(:user).permit(:sub, :nickname, :email, :name, :picture, :picture_large, :user_id, :access_token)
    end

end
