class Account < ApplicationRecord
  belongs_to :mytag
  has_many   :comments, dependent: :destroy

  validates :name, presence: true
end
