class AppMailer < ActionMailer::BASE

  def new_reservation(room, reservation)
    @user = User.find(room.user_id)
    @reservation = reservation
    @activity = activity
    mail(from: 'Sporticy <no-reply@sporticy.fr', to: @user.email, subject: "Nouvelle réservation" )
  end

end
