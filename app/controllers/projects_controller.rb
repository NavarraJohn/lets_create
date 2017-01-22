class ProjectsController < ApplicationController

  before_action :authenticate_user!

  def home
    @projects = Project.all
    @project1 = Project.find_by(id: 1)
    @project2 = Project.find_by(id: 2)
    @project3 = Project.find_by(id: 4)
    @users = User.all 
  end

  def index
    @projects = Project.all
    @project_images = ProjectImage.all
    @instructions = Instruction.all
    @users = User.all
  end  

  def show

    @projects = Project.find_by(id: params[:id])
    #@images = Image.find_by(id: params[:id])
    #@instructions = Instruction.find_by(id: params[:id])
    #@users = User.find_by(id: params[:id])
    


  end  

  def search
    @search_term = params[:search]
    @projects = Project.where("name LIKE ?", "%#{@search_term}%")
    render :index
  end

  def new
  end

  def create
    @projects = Project.create(name: params[:name], user_id: current_user.id)
  
    @project_images = ProjectImage.create(url: params[:url], project_id: @projects.id)
    

    @instructions = Instruction.create( description: params[:description], step_number: params[:step_number], project_id: @projects.id)
 

    flash[:success] = "Project has been created!"

    redirect_to "/projects/#{@projects.id}"

  end

  def edit
    @projects = Project.find_by(id: params[:id])
    if current_user.id != @projects.user_id
      redirect_to "/"
    end
  end

  def update
    @projects = Project.find_by(id: params[:id])
    @projects.assign_attributes(name: params[:name])
    @projects.save

    flash[:success] = "Project has been updated!"

    redirect_to "/projects/#{@projects.id}"
  end

  def destroy
    projects = Project.find_by(id: params[:id])
    projects.destroy

    flash[:danger] = "Project has been deleted!"

    if current_user.id != @projects.user_id
      redirect_to "/"
    end 

    redirect_to "/projects"
  end
  

end
  

