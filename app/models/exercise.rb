class Exercise < ActiveRecord::Base
  attr_accessible :name, :sets, :reps, :cardio, :time, :description, :img_url
  # change cardio to time boolean
  has_many :exercise_routines, :dependent => :destroy
  has_many :routines, :through => :exercise_routines
end
