class Dream < ApplicationRecord
  belongs_to :user
  has_one :collage
end
