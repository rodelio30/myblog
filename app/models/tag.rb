class Tag < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :accounts, through: :taggings

end
