class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "会員登録が完了しました！"
      redirect_to @user
    else
      render 'new'
    end
    
    p "============="
    p params
    p "============="
  end

  private

    def user_params
      params.require(:user).permit(:nickname, :email, :password,
                                   :password_confirmation)
    end
end
