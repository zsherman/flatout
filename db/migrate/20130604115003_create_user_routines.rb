class CreateUserRoutines < ActiveRecord::Migration
  def change
    create_table :user_routines do |t|
      t.references :user
      t.references :routine
      t.timestamps
    end
  end
end
