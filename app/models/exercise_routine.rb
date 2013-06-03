class ExerciseRoutine < ActiveRecord::Base
  attr_accessible :routine_id, :exercise_id, :reps, :sets, :time
  belongs_to :routine
  belongs_to :exercise
end
