module BlogsHelper
  def blog_img img, type
    if img.model.main_photo? || img.model.photo_one?
      img
    elsif type == 'photo_one'
      image_generator(height: '350', width: '200')
    elsif type == 'main'
      image_generator(height: '600', width: '400')
    end
  end
end
