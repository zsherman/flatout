class ExerciseRoutine < ActiveRecord::Base
  attr_accessible :routine_id, :exercise_id
  belongs_to :routine
  belongs_to :exercise
end
