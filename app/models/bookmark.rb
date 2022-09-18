class Bookmark < ApplicationRecord
  belongs_to :movie, dependent: :destroy
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :list_id, scope: :movie_id
end
