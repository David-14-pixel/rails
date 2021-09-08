class RegistrationsController < ApplicationController
    def new
        @user=User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
        # stores saved user id in a session
          session[:user_id] = @user.id
          redirect_to customers_path, notice: 'Se creo su cuenta con exito'
        else
          render :new
        end
      end
      private
      def user_params
        # strong parameters
        params.require(:user).permit(:email, :password, :password_confirmation)
      end
end
