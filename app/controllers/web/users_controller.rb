class Web::UsersController < Web::ApplicationController
  def new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'User was created!'
    else
      flash[:notice] = 'Please try again'
    end
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :login, :email, :nickname, :password)
  end
end
