class PicturesController < ApplicationController
  def index
  end

  def new
    @room = Room.find(params[:room_id])
    @picture = Picture.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  def create
  end
end
