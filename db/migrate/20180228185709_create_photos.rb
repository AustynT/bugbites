class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.text :my_photo
      t.references :blog, foreign_key: true

      t.timestamps
    end
  end
end
