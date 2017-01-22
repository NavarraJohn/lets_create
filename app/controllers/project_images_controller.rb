class ProjectImagesController < ApplicationController


  def create
    @project_images = ProjectImage.create(url: params[:url])
  end  



end
