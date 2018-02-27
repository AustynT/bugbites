class Country < ApplicationRecord
  has_many :states
  has_many :blogs, through: :states

end
