class Routine < ActiveRecord::Base
  attr_accessible :name, :id
  has_many :exercise_routines, :dependent => :destroy
  has_many :exercises, :through => :exercise_routines
  has_many :user_routines, :dependent => :destroy
  has_many :users, :through => :user_routines
end
