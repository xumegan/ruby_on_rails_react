module Api
  module V1
    class AirlinesController < ApiController
       # GET /api/v1/airlines
      def index
        airlines=Airline.all
        render json: AirLingSerializer.new(airlines,options).serialized_json
      end
       # GET /api/v1/airlines/:slug
      def show
        airline=Airline.find_by(slug.params[:slug])
        render json: AirLingSerializer.new(airlines,options).serialized_json
      end
      def create
        airline=Airline.new(airline_params)
        if airline.save
          render json: AirLingSerializer.new(airlines).serialized_json
      end
      def update
        airline=Airline.find_by(slug.params[:slug])
        if airline.update(airline_params)
          render json: AirLingSerializer.new(airlines,options).serialized_json
        else render json: {error: airline.errors.messages},status:422
      end
      def destroy
        airline=Airline.find_by(slug.params[:slug])
        if airline.destroy
          head:no_content
        else render json: {error: airline.errors.messages},status:422
      end
      private
      def airline_params
        params.require(:airline).permit(:name,:image_url) 
      end
      def options
        @options ||={include:%i[reviews]}
    end
  end
end  