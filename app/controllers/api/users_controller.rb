module Api
  class UsersController < ApplicationController
    before_action :authenticate_user_from_token!

    def index
      if current_user
        render nothing: true
      else
        render json: {}, status: :unauthorized
      end
    end
  end
end
