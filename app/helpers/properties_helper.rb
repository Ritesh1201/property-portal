module PropertiesHelper
  def property_thumbnail(property)
    img = property.image.present? ? property.image.url : "placeholder.jpg"
    image_tag img, class: "property-thumb"
  end

  def property_thumbnail_url(property)
    property.image.present? ? property.image.url : "placeholder.jpg"
  end

  def property_image(property)
    img = property.image.present? ? property.image.url : "placeholder.jpg"
    image_tag img, class: "property-image", :size => "1303x580"
  end
end