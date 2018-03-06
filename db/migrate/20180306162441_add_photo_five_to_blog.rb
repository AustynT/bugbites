class AddPhotoFiveToBlog < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :photo_five, :text
  end
end
