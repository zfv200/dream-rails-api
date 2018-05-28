class Dream < ApplicationRecord
  belongs_to :user
  has_many :analyses
  has_one :collage
end
