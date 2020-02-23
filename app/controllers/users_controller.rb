class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users
    end

    def show
        user = User.find_by(sub: params['sub'])
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
        params.require(:user).permit(:sub, :nickname, :social_id, :email, :name, :picture)
    end

end
