class AddStatesToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_reference :blogs, :state, foreign_key: true
  end
end
