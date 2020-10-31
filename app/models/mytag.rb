class Mytag < ApplicationRecord
  has_many :accounts

  validates :category, presence: true
end
