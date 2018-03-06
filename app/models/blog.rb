class Blog < ApplicationRecord
  belongs_to :state
  has_one :country, through: :state

  mount_uploader :main_photo, BlogUploader
  mount_uploader :photo_one, BlogUploader
  mount_uploader :photo_twp, BlogUploader
  mount_uploader :photo_three, BlogUploader
  mount_uploader :photo_four, BlogUploader
  mount_uploader :photo_five, BlogUploader
  mount_uploader :photo_six, BlogUploader
  mount_uploader :photo_seven, BlogUploader
  mount_uploader :photo_eight, BlogUploader
  mount_uploader :photo_nine, BlogUploader
  mount_uploader :photo_ten, BlogUploader


end
