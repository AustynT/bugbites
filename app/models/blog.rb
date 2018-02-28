class Blog < ApplicationRecord
  belongs_to :state
  has_one :country, through: :state


  after_initialize :set_defaults
  
  def set_defaults
    self.main_photo = "http://placehold.it/300x250"
  end
end
