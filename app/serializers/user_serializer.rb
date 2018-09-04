class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :collections
end
