class User < ApplicationRecord
  # Required/optional.
  validates :name, :email, presence: true

  # Validations.
  validates :name, length: { minimum: 2 }
  validates :email, uniqueness: true

  # Relationships.
  has_many :article
end
