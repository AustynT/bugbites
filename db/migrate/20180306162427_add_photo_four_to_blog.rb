class AddPhotoFourToBlog < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :photo_four, :text
  end
end
