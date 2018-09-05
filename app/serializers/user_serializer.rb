class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bizcards, :collections
end
