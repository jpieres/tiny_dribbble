class ShotsController < ApplicationController

  def create
    @shot = current_user.shots.build(params[:shot])
    begin
      if @shot.save
        flash[:notice] = "Shot created!"
        redirect_to root_url
      else
        render 'site/home'
      end
    rescue
      flash[:error] = "There has been an error uploading the image to AWS. Please try with a smaller file."
      redirect_to new_shot_path
    end
  end

  def destroy
  end

  def new
    @shot = current_user.shots.build
  end

end