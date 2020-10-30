class Tag < ApplicationRecord
  has_many :taggings
  has_many :accounts, through: :taggings

end
