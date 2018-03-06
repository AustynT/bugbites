class AddPhotoThreeToBlog < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :photo_three, :text
  end
end
