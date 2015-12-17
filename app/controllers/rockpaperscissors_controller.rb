class RockpaperscissorsController < ApplicationController
  include Rockpaperscissors

  def new
    session[:rps_human_score] = 0 unless session[:rps_human_score]
    session[:rps_cpu_score] = 0 unless session[:rps_cpu_score]
  end

  def result
    @choice = params[:choice]
    @computer_choice = computer_select_move
    @result = get_winner(@choice, @computer_choice)
  end
end
