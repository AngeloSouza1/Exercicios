class UsersController < ApplicationController
  def index
    # Coloque sua lógica aqui
    @users = User.all
  end

  def create
    # Coloque sua lógica aqui
    @user = User.new(user_params)

   end

  # Outras ações do controlador aqui

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
