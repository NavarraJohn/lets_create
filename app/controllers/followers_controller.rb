class FollowersController < ApplicationController

   before_action :authenticate_user!

 

  def index

    @followers = Follower.all
  end  

  def show

     @followers = Follower.find_by(id: params[:id])
    


  end  

  def search
    @search_term = params[:search]
    @followers = Follower.where("name LIKE ?", "%#{@search_term}%")
    render :index
  end

  def new
  end

  def create
    follower = params[:user_id]
    curr = current_user.id
    puts "follower #{follower} and curr user #{curr}"
    @followers = Follower.create(follower_id: current_user.id,  user_id: params[:user_id])
  
    redirect_to "/users/#{@current_user.id}"
   


    #@projects = Project.create(name: params[:name], user_id: current_user.id)
  
    #@project_images = ProjectImage.create(url: params[:url], project_id: @projects.id)
    
  end

  

  def destroy
    follower = Follower.find_by(id: params[:id])
    follower.destroy

    flash[:danger] = "Project has been deleted!"

    if current_user.id != @followers.user_id
      redirect_to "/user/#{@current_user.id}"
    end 

    redirect_to "/projects"
  end
  





end
