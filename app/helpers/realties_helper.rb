module RealtiesHelper
  def realty_thumbnail realty
    img = realty.photo.present? ? realty.photo.thumb.url : "placeholder.jpg"
    image_tag img, class: "realty-thumb"
  end

  def realty_thumbnail_url realty
    realty.photo.present? ? realty.photo.thumb.url : "placeholder.jpg"
  end

  def realty_photo_url realty
    realty.photo.present? ? realty.photo.url : asset_url("placeholder.jpg")
  end
end
