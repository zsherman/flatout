class UserRoutine < ActiveRecord::Base
  attr_accessible :user_id, :routine_id
  belongs_to :user
  belongs_to :routine
end
