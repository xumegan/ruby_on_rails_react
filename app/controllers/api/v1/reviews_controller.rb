module Api
  module V1
    class ReviewsController < ApiController
      def create
        review =Review.new(review_params)
        if review.save
          render json: ReviewSerializer.new(review).serialized_json
        else
          render json:{error:review.errors.messages},status:422
      private
      def review_params
        params.require(:review).permit(:title.:decription,:score,:aireline_id)
    end
  end
end  