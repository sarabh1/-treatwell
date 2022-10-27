class ReservationsController < ApplicationController
   def index
    @user = current_user
    @reservations = Reservation.all
    # @reservations = policy_scope(reservation).order(created_at: :desc)
  end

  def show
    @user = current_user
    @reservation = Reservation.find(params[:id])
    # authorize @reservation
  end

  def new
    @service = Service.find(params[:service_id])
    @user = current_user
    @reservation = Reservation.new
    # authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @service = Service.find(params[:service_id])
    @user = current_user
    # @reservation.service = @service
    # authorize @reservation

      if @reservation.save!
        redirect_to reservations_path
      else
        render :new
      end
  end

  # def edit
  #   @user = current_user
  #   @reservation = Reservation.find(params[:format])
  #   # authorize @reservation
  # end

  # def update
  #   @reservation = Reservation.find(params[:id])
  #   @user = current_user
  #   @reservation.user = @user
  #   # authorize @reservation

  #   if @reservation.update(reservation_params_update)
  #     redirect_to reservation_path
  #   else
  #     render :edit
  #   end
  # end

  def destroy
    @reservation = Reservation.find(params[:format])
    # authorize @reservation

    if @reservation.destroy
      redirect_to reservations_path
    else
    end
  end

    private

  def reservation_params
    params.require(:reservation).permit(:end_date, :start_date, :service_id, :user_id)
  end

  def reservation_params_update
    params.require(:reservation).permit(:end_date, :start_date)
  end
end
