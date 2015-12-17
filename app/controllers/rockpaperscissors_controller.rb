class RockpaperscissorsController < ApplicationController
  include Rockpaperscissors

  def new
  end

  def result
    @choice = params[:choice]
    @computer_choice = computer_select_move
    @result = get_winner(@choice, @computer_choice)
  end
end
