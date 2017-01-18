class ProjectsController < ApplicationController

  before_action :authenticate_user!

  def home
    @project1 = Project.find_by(id: 1)
    @project2 = Project.find_by(id: 2)
    @project3 = Project.find_by(id: 4)
  end

  def index
    @projects = Project.all
    @project_images = ProjectImage.all

  end  

  def show

    @projects = Project.find_by(id: params[:id])
    @images = Image.find_by(id: params[:id])
    @instructions = Instruction.find_by(id: params[:id])
    @users = User.find_by(id: params[:id])


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
  
    
    @images = Image.create(url: params[:url])
    @images.save

    @instructions = Instruction.create(description: params[:description], step_number: params[:step_number])
    @instructions.save

    flash[:success] = "Project has been created!"

    redirect_to "/projects/#{@projects.id}"

  end

  def edit
    @projects = Project.find_by(id: params[:id])
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

    redirect_to "/projects"
  end
  

end
  

