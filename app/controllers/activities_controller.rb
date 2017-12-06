class ActivitiesController < ApplicationController

before_action :set_activity, only: [:show, :edit, :update]
before_action :authenticate_user!, except: [:show]

	def index
		@activities = current_user.activities
	end

	def new
		@activity = current_user.activities.build
	end

	def create
		@activity = current_user.activities.build(activity_params)
		if @activity.save
			redirect_to @activity, notice: "Votre activité a été ajouté avec succès"
		else
			render :new
		end
	end

	def show
	end

	def edit
	end

	def update
		if @activity.update(activity_params)
			redirect_to @activity, notice: "Modification enregistrée..."
		else
			render :edit
		end
	end

private
	def set_activity
		@activity = Activity.find(params[:id])
	end

	def activity_params
		params.require(:activity).permit(:activity_name, :description, :activity_type, :competence_developed, :max_participant, :duration, :address, :siren, :price, :active)
	end


end
