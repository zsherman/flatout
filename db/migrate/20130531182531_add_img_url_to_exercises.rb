class AddImgUrlToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :img_url, :string
  end
end
