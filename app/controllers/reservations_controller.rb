class ReservationsController < ApplicationController
  before_action :set_experience, only: [:new, :create]

  def index
    @reservations = current_user.reservations
  end

  def new
    @reservation = Reservation.new
  end

  def show
    @reservation = Reservation.new(params[:id])
  end

  def create
    @reservation = @experience.reservations.new(reservation_params)
    @reservation.user = current_user
    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end
  end

  def price_to_pay
    @total_price = @experience.price * @experience.participants_number
  end

  def approve
    @reservation = Reservation.find(params[:id])
    if @reservation.update(pending: false)
      #send_sms_accepted
    else
  end

  private

  def reservation_params
    params.require(:reservation).permit(:experience_id, :participants_number, :start_at, :end_date)
  end

  def set_experience
    @experience = Experience.find(params[:experience_id])
  end

  def send_sms_accepted
    @user = self.user
    @user.phone.slice!(0)
    @user_phone = "+33" + @user.phone
    @host = User.find(self.user_id)
    client = Twilio::REST::Client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'])
    from = '+33644645152'
    to = @user_phone
    client.messages.create(
    from: from,
    to: to,
    body: "Votre réservation a bien été acceptée !"
    )
  end

end




