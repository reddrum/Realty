module RealtiesHelper
  def realty_thumbnail realty
    img = realty.photo.present? ? realty.photo.thumb.url : "placeholder.jpg"
    image_tag img, class: "realty-thumb"
  end
end
