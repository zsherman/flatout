class AddNameToUserRoutines < ActiveRecord::Migration
  def change
    add_column :user_routines, :name, :string
  end
end
