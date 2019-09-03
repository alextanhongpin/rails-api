class Article < ApplicationRecord
  belongs_to :user

  # This is the same as calling Article.preload(:user),
  # but we are hiding the implementation details.
  scope :with_users, -> { preload(:user) }
end
