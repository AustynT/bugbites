class AddPhotoTenToBlog < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :photo_ten, :text
  end
end
