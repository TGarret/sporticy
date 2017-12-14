class ReservationsController < ApplicationController

before_action :authenticate_user!

def preload
	activity = Activity.find(params[:activity_id])
	today = Date.today
	reservations = activity.reservations.where("date >= ?", today)

	render json: reservations
end

def preview
	date = Date.parse(params[:date])

	output = date

	render json: output
end

def create
	@reservation = current_user.reservations.create(reservation_params)
	if reservation.save
	AppMailer.new_reservation(Activity.find(@reservation.activity_id), @reservation).deliver_now
	redirect_to @reservation.activity, notice: "Votre réservation a bien été envoyé"

	end
end

def your_experiences
	@experiences = current_user.reservations
end

def your_reservations
	@activities = current_user.activities
end


private

def reservation_params
	params.require(:reservation).permit( :date, :price, :total, :activity_id )
end

end
