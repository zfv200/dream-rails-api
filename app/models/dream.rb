class Dream < ApplicationRecord
  belongs_to :user
  has_many :images
  has_many :analyses
end
