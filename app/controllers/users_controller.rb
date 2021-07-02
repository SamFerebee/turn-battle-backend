class UsersController < ApplicationController

    def create
        user = User.create(username: params[:name], password: params[:password])
        if user.valid?
            token = JWT.encode({user_id: user.id}, "secret", "HS256")
            render json: {user: user, token: token}
        else
            render json: user.errors.full_messages
        end
    end

    def login
        user = User.find_by(username: params[:name])
        if user && user.authenticate(params[:password])
            token = JWT.encode({user_id:user.id}, "secret", "HS256")
            render json: {user: user, token: token};
        else
            render json: ["Incorrect username or password"]
        end
    end

    def me
        # auth_header = request.headers["Authorization"]
        # token = auth_header.split.last
        # payload = JWT.decode(token, "secret", true, { algorithm: 'HS256' }).first
        # @user = User.find_by(id: payload["user_id"])
        @user = User.find_by(username: params[:user])
        if (@user)
            render json: @user
        else
            render json: ["Authorization failed!"]
        end
    end

    def autolog
        auth_header = request.headers["Authorization"]
        token = auth_header.split.last
        payload = JWT.decode(token, "secret", true, { algorithm: 'HS256' }).first
        @user = User.find_by(id: payload["user_id"])
    
        if (@user)
            render json: @user
        else
            render json: ["Authorization failed!"]
        end
    end

end
