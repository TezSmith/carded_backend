class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bizcards
  has_many :collections
end
