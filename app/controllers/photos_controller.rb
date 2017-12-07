class PhotosController < ApplicationController

	def destroy
		@photo = Photo.find(params[:id])
		activity = @photo.activity

		@photo.destroy

		@photo = Photo.where(activity_id: room.id)

		respond_to :js
	end
end
