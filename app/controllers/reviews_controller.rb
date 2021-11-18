class ReviewsController < ApplicationController

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant, anchor: "review-#{@review.id}")
    else
      render 'restaurants/show'
    end

  end


  private

  def review_params
    params.require(:review).permit(:content)
  end

end
