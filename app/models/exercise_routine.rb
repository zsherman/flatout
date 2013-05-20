class ExerciseRoutine < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :routine
  belongs_to :exercise
end
