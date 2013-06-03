class AddSetsRepsAndTimeToExerciseRoutine < ActiveRecord::Migration
  def change
    add_column :exercise_routines, :sets, :integer
    add_column :exercise_routines, :reps, :integer
    add_column :exercise_routines, :time, :integer
  end
end
