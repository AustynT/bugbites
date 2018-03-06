class AddPhotoTwoToBlog < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :photo_two, :text
  end
end
