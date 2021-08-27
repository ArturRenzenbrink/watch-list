class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6}
  #add_index :movie_list, [:movie_id, :list_id], unique: true
  validates :movie_id, uniqueness: { scope: :list_id }
end
