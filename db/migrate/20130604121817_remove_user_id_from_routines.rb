class RemoveUserIdFromRoutines < ActiveRecord::Migration
  def up
    remove_column :routines, :user_id
  end

  def down
    add_column :exercise_routines, :user_id
  end
end
