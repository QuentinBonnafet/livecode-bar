class BarsController < ApplicationController
  def index
    @bars = Bar.all
  end

  def show
    @bar = Bar.find(params[:id])
  end

  def new
    @bar = Bar.new
    @user = User.find(params[:user_id])
  end

  def create
    @user = User.find(params[:user_id])
    @bar = Bar.new(bar_params)
    @bar.user = @user
    @bar.save
    redirect_to users_path
  end

  private

  def bar_params
    params.require(:bar).permit(:name, :address)
  end
end
