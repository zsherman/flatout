class UserRoutine < ActiveRecord::Base
  attr_accessible :user, :routine
  belongs_to :user
  belongs_to :routine
end
