class AddDescriptionToRoutine < ActiveRecord::Migration
  def change
    add_column :routines, :description, :text
  end
end
