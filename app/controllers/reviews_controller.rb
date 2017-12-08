class ReviewsController < ApplicationController

  def create
    @review = current_user.reviews.create(review_params)
    redirect_to @review.activity
  end

  def destroy
    @review = Review.find(params[:id])
    activity = @review.activity
    @review.destroy
    redirect_to activity
  end

  private
  def review_prams
    params.require(:reviews.permit(:comment, :star, :activity_id)
end
