class ImageSerializer < ActiveModel::Serializer
  attributes :id, :image_data, :opacity, :width, :height, :border_radius, :left, :top
end
