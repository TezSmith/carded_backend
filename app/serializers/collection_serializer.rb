class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :collection_name
  # has_many :bizcards
end
