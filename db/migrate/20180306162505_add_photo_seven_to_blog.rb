class AddPhotoSevenToBlog < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :photo_seven, :text
  end
end
