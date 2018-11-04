class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:email, :password)
    @user = User.new
    @user.assign_attributes(user_params)

    if @user.valid? == false
      render 'new'
    else
      @user.save(user_params)
      log_in(@user)
      redirect_to users_path
    end

  end

  def index
  end

  def show
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    puts "//////////"
    user_params = params.require(:user).permit(:email, :password)
    @user = User.find(current_user.id)
    @user.assign_attributes(user_params)
    
    if @user.valid? == false
      render 'edit'
    else
      @user.update(user_params)
      redirect_to users_path
    end

  end

  def destroy
  end

end
