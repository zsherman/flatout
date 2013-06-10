class ExerciseRoutinesController < ApplicationController

  def create
  end

  def batch
    routines = params[:routine_ids]
    exercise_id = params[:exercise_id]
    logger.info "<========Routine Info========>"
    logger.info routines
    logger.info exercise_id
    routines.each do |routine|
      ExerciseRoutine.create(:routine_id => routine, :exercise_id => exercise_id)
    end
    respond_to do |format|
      format.html { redirect_to '/', notice: 'Exercise Added.' }
      format.js
    end
  end

  def edit
    @exercise_routine = ExerciseRoutine.find(params[:id])
  end

  def update
    @exercise_routine = ExerciseRoutine.find(params[:id])
    if @exercise_routine.update_attributes(params[:exercise_routine])
      respond_to do |format|
        format.html { redirect_to '/', notice: 'Exercise Updated.' }
        format.js
      end
    else
      render 'edit'
    end
  end

  def destroy
    @exercise_routine = ExerciseRoutine.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to '/' }
      format.js
    end
  end

end
