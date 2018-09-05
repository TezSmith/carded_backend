class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :collection_name, :bizcards
  # has_many :bizcards

  def bizcards
    # byebug
    object.bizcards
  end

end
