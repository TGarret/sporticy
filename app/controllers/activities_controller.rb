class ActivitiesController < ApplicationController

before_action :set_activity, only: [:show, :edit, :update]
before_action :authenticate_user!, except: [:show]
before_action :require_same_user, only: [:edit, :update]

	def index
		@activities = current_user.activities
	end

	def new
		@activity = current_user.activities.build
	end

	def create
		@activity = current_user.activities.build(activity_params)
		if @activity.save
			if params[:images]
				params[:images].each do |i|
					@activity.photos.create(image: i)
				end
			end
			@photos = @activity.photos
			redirect_to activities_path, notice: "Votre activité a été ajouté avec succès"
		else
			render :new
		end
	end

	def show
		@photos = @activity.photos
		@booked = Reservation.where("activity_id = ? AND user_id = ?", @activity_id, @current_user_id).present?
		if current_user
			@reviews = @activity.reviews
			@hasReview = @reviews.find_by(user_id: current_user.id) if current_user
		end
	end

	def edit
		@photos = @activity.photos
	end

	def update
		if @activity.update(activity_params)
			if params[:images]
				params[:images].each do |i|
					@activity.photos.create(image: i)
				end
			end
			@photos = @activity.photos
			redirect_to edit_activity_path(@activity), notice: "Modification enregistrée"
		else
			render :edit
		end
	end

private
	def set_activity
		@activity = Activity.find(params[:id])
	end

	def activity_params
		params.require(:activity).permit(:activity_name, :description, :activity_type, :competence_developed, :max_participant, :duration, :address, :siren, :price, :active, :is_indoor, :is_outdoor)
	end

	def require_same_user
		if current_user.id != @activity.user_id
			flash[:danger] = "Vous n'avez pas le droit de modifier cette page"
			redirect_to root_path
		end
	end


end
