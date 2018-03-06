class AddPhotoNineToBlog < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :photo_nine, :text
  end
end
