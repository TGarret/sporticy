class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		@activities = @user.activities
	end


end
