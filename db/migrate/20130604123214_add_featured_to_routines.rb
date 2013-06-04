class AddFeaturedToRoutines < ActiveRecord::Migration
  def change
    add_column :routines, :featured, :boolean, :default => false
  end
end
