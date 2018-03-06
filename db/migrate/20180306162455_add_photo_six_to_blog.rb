class AddPhotoSixToBlog < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :photo_six, :text
  end
end
