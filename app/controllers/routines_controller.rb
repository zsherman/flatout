class RoutinesController < ApplicationController

  def create
    @routine = Routine.new(params[:routine])
    @routine.name = params[:name]
    @routine.user = current_user
    if @routine.save
      respond_to do |format|
        format.html
        format.json  { render :json => @routine }
      end
    end
  end

  def start
    @routine = Routine.find(params[:id])
    @exercises = @routine.exercises
  end


end
