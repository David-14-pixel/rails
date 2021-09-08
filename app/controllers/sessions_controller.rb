class SessionsController < ApplicationController
    def new;
     end
    def create
        user=User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
        redirect_to customers_path, notice: 'Conectado con éxito'
    else
        flash.now[:alert] = 'Correo o Clave invalidos'
        render :new
        end
    end
    def destroy
        # deletes user session
        session[:user_id] = nil
        redirect_to customers_path, notice: 'Desconectado'
      end
end
