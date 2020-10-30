class Tag < ApplicationRecord
  has_many :taggings, dependent: :delete_all

  has_many :accounts, through: :taggings
end
