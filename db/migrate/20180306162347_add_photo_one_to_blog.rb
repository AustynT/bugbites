class AddPhotoOneToBlog < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :photo_one, :text
  end
end
