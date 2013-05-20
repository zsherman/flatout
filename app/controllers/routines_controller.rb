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

  def show
    @routine = Routine.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => @routine }
    end
  end

  def start
    @routine = Routine.find(params[:id])
    @exercises = @routine.exercises
  end

  def render_partial
    @routine = Routine.find(params[:id])
    @exercises = @routine.exercises
    render :json => {
      :html => render_to_string({
        :partial => "exercise_list",
        :locals => {:routine => @routine}
      })
    }
  end


end
