class DreamSerializer < ActiveModel::Serializer
  attributes :content, :user_id, :images
end
