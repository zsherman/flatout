class AddSetsRepsAndTimeToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :sets, :integer
    add_column :exercises, :reps, :integer
    add_column :exercises, :time, :integer
    add_column :exercises, :cardio, :boolean
  end
end
