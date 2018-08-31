class CollectionSerializer < ActiveModel::Serializer
  attributes :id :group_name
  belongs_to :user
  has_many :bizcards 
end
