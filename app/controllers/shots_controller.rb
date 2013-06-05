class ShotsController < ApplicationController

  def index

    @shots = Shot.all
    @shots -= current_user.shots unless current_user.nil?
  end

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

  def like
    @id=params[:id]
    shot = Shot.find @id

    if !(shot.user.id == current_user.id || shot.fans.include?(current_user))
      shot.fans << current_user
      shot.save
    end

    @count = shot.fans.size
    respond_to do |format|
      format.html { redirect_to root_url }
      format.js
    end    
  end

end