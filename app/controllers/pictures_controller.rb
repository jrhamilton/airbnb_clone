class PicturesController < ApplicationController
  def index
  end

  def new
    @room = Room.find(params[:room_id])
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save!
      flash[:notice] = "Your photo was added"
      redirect_to room_path(@picture.room)
    else
      flash[:alert] = "Try again"
      redirect_to :back
    end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

private
  def picture_params
    params.require(:picture).permit(:room_id, :caption, :pic_file_name, :pic_content_type, :pic_file_size, :pic_updated_at)
  end


end
