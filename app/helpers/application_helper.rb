module ApplicationHelper
  def profile_picture account, width = 100, height = 100
    thumb = account.image.present? ? account.image.thumb.url : "placeholder.jpg"
    image_tag thumb, width: width, height: height, class: "profile-pic img-circle"
  end
end
