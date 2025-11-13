class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6, message: 'Comment must have at least 6 characters' }
  validates :movie_id, uniqueness: { scope: :list_id }

  belongs_to :movie
  belongs_to :list
end
