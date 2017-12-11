class PagesController < ApplicationController
  def home
    @activities = Activity.order("RANDOM()").limit(3)
  end



  def search
    if params[:search].present? && params[:search].strip != ""
      session[:sporticy_search] = params[:search]
    end

    arrResult = Array.new

    if session[:sporticy_search] && session[:sporticy_search] != ""
       @activities_adress = Activity.where(active: true).near(session[:sporticy_search], 5, order:'distance')
    else
       @activities_adress = Activity.where(active: true).all
    end

    @search = @activities_adress.ransack(params[:q])
    @activities =  @search.result

    @arrActivities = @activities.to_a

    if (params[:date] && !params[:date].empty?)
      date = Date.parse(params[:date])

      @activities.each do |activity|
        not_available = activity.reservation.where("(? <= date <= ?)",
        date).limit(1)

        if not not_available.length > 0
          @arrActivities.delete(activity)
        end
      end
    end
  end
end
