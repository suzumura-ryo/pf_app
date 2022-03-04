class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
  end

  def show
    @user = User.find(params[:id])
    @procedures = @user.microposts.paginate(page: params[:page])
  end

  def edit
  end
  
  def create
    @user = User.new(user_params)
    @user.birthday = params[:user][:year] + "/" + params[:user][:month] + "/" + params[:user][:day]
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
                                   :password_confirmation, :gender)
    end
    
      # beforeフィルター

    # 正しいユーザーかどうかを確認
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    # 管理者かどうかを確認
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
