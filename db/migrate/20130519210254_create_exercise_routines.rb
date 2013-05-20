class CreateExerciseRoutines < ActiveRecord::Migration
  def change
    create_table :exercise_routines do |t|
      t.references :exercise
      t.references :routine
      t.timestamps
    end
  end
end
