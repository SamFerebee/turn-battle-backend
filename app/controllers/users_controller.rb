class UsersController < ApplicationController

    def create
        user = User.create(username: params[:name], password: params[:password])
        if user.valid?
            render json: user
        else
            render json: user.errors.full_messages
        end
    end

    def login
        user = User.find_by(username: params[:name])
        if user && user.authenticate(params[:password])
            render json: user;
        else
            render json: ["Incorrect username or password"]
        end
    end

end
