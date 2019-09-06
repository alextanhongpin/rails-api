class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  attributes :custom

  # We can add custom field to the json response.
  def custom 
    'custom_field_added'
  end
end
