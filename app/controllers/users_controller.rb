class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    # Le sort_by est une méthode de Ruby qui permet de trier un tableau selon un critère donné
    # Ici, on trie les utilisateurs selon leur présence. Si l'utilisateur est présent, il est placé en premier
    @users = User.all.sort_by { |u| u.present? ? 0 : 1 }
  end

  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to users_path
  end

  def edit; end

  def update
    @user.update(user_params)
    redirect_to users_path
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  ## Juste pour le fun
  def les_vrais
    @users = User.where(present: true)
  end

  private

  def user_params
    params.require(:user).permit(:name, :description, :present, :github_name)
  end

  def set_user
    if User.exists?(params[:id])
      @user = User.find(params[:id])
    else
      redirect_to users_path
    end
  end
end
