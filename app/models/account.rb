class Account < ApplicationRecord
  belongs_to :mytag
  has_many   :comments, dependent: :destroy

  validates :name, presence: true

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  def self.tagged_with(name)
    Tag.find_by_name!(name).accounts
  end

  def self.tag_counts
    Tag.select("tags.*, count(taggings.tag_id) as count").
        joins(:taggins).group("taggins.tag_id")
  end

  def tag_list
      tags.map(&:name).join(", ")
  end

  def tag_list=(names)
    self.tags = names.split(",").map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
end
