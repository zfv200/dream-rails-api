class User < ApplicationRecord
  has_many :dreams
  has_many :collages, through: :dreams
  has_one :analysis
end
