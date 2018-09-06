class BizcardSerializer < ActiveModel::Serializer
  attributes :id, :card_name, :line1, :line2, :line3, :line4, :line5

  def collection_name
    object.collection.collection_name
  end

end
