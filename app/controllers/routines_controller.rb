class RoutinesController < ApplicationController

  def create
    @routine = Routine.new(params[:routine])
    @routine.author_id = current_user.id
    if @routine.save
      @user_routine = UserRoutine.new(:user_id => current_user.id, :routine_id => @routine.id)
      if @user_routine.save
        respond_to do |format|
          format.html { redirect_to '/' }
          format.js
        end
      end
    end
  end

  def new
    @routine = Routine.new
  end

  def edit
    @routine = Routine.find(params[:id])
  end

  def update
    @routine = Routine.find(params[:id])
    if @routine.update_attributes(params[:routine])
      respond_to do |format|
        format.html { redirect_to '/', notice: 'Routine Updated.' }
        format.js
      end
    else
      render 'edit'
    end
  end

  def destroy
    @routine = Routine.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to '/' }
      format.js
    end
  end

  def show
    @routine = Routine.find(params[:id])
    @routines = current_user.routines
    @exercises = @routine.exercises
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
    @user_routine = UserRoutine.where(:routine_id => @routine.id, :user_id => current_user.id).first
    @exercise_routines = @routine.exercise_routines
    render :json => {
      :html => render_to_string({
        :partial => "exercise_list",
        :locals => {:routine => @routine, :user_routine => @user_routine}
      })
    }
  end


end
