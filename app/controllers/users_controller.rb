class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render :new
    end
  end

  def login
  end

  def authenticate
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_url, notice: "You are now logged in!"
    else
      flash.now[:alert] = "Invalid email or password"
      render :login
    end
  end

  def show
  end

  def destroy
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
