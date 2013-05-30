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
    redirect_to root_path
  end

end
