class Api::V1::GreetingsController < ApplicationController
  def random
    @greeting = Message.order("RANDOM()").first
    render json: { greeting: @greeting.content }
  end
end
