class ReservationsController < ApplicationController

before_action :authenticate_user!

def create
	@reservation = current_user.reservations.create(reservation_params)
	redirect_to @reservation.activity, notice: "Votre réservation a bien été envoyé"



	Private
	def reservation_params
		params.require(:reservation).permit( :date, :price, :total, :activity_id )