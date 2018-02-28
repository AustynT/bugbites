class Blog < ApplicationRecord
  belongs_to :state
  has_one :country, through: :state
  has_many :photos

  accepts_nested_attributes_for :photos, 
                                reject_if: lambda {|attrs| attrs['my_photo'].blank?}


  after_initialize :set_defaults
  
  def set_defaults
    self.main_photo = "http://placehold.it/300x250"
  end
end
