class Movie < ApplicationRecord
  validates :title, :overview, uniqueness: true, presence: true

  has_many :bookmarks
  has_many :lists, through: :bookmarks
end

  #should not be able to destroy self if has bookmarks children (FAILED - 2)
