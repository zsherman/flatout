class Exercise < ActiveRecord::Base
  attr_accessible :name, :sets, :reps, :cardio, :time
  # change cardio to time boolean
  has_many :exercise_routines
  has_many :routines, :through => :exercise_routines
end
