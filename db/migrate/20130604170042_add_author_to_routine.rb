class AddAuthorToRoutine < ActiveRecord::Migration
  def change
    add_column :routines, :author_id, :integer
  end
end
