class ReservationsController < ApplicationController
  before_filter :authenticate_user!
  def index
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def new
    @reservation = Reservation.new
  end

  def create
    user_id = current_user.id
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      @reservation.update({:user_id => user_id})
      flash[:notice] = "Fantastic! Your reservation has been saved."
      redirect_to room_path(@reservation.room)
    else
      flash[:alert] = "Reservation did not reservate"
      redirect_to :back
    end
  end

  def update
  end

private
  def reservation_params
    params.require(:reservation).permit(:user_id, :room_id, :check_in, :check_out)
  end
end
