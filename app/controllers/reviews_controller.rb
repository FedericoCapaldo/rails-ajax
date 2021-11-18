class ReviewsController < ApplicationController

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    respond_to do |format|
      if @review.save
        format.html { redirect_to restaurant_path(@restaurant) }
        format.json # Follow the classic Rails flow and look for a create.json view
      else
        format.html { render 'restaurants/show' }
        format.json # Follow the classic Rails flow and look for a create.json view
      end
    end

  end


  private

  def review_params
    params.require(:review).permit(:content)
  end

end
