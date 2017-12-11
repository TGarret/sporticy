class ConfirmationsController < ApplicationController

  private
  def after_confirmation_path_for(ressource_name, ressource)
    edit_user_registration_path
  end

end
