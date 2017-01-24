class UsersController < ApplicationController
  
  def new
    render 'new.html.erb'
  end

  def index
    @users = User.all
  end  

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password])
    if user.save
      session[:user_id] = user.id
      flash[:success] = 'Successfully created account!'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/signup'
    end
  end

  def show
    @users = User.find_by(id: params[:id])
    @followers = Follower.all
  end

  def follower
    @user = Follower.create(user_id: params[])
  end  
end
