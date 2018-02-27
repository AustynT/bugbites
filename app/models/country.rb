class Country < ApplicationRecord
  has_many :states
  has_many :blogs, through: :states

  def self.asc_order
    order('name ASC')
  end

end
