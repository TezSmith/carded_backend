class BizcardSerializer < ActiveModel::Serializer
  attributes :id, :card_name, :line1, :line2, :line3, :line4, :line5
  has_one :collection
end
