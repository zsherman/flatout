class AddTipsToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :tips, :text
  end
end
