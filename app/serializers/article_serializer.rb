class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :user, :created_at, :updated_at

  # Conditional attribute, becareful not to include business logic
  # in the serializer.
  attribute :body, if: :has_body?

  def has_body?
    !object.body.blank?
  end

  def created_at
    object.created_at.to_i
  end
end
