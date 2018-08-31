class BizcardSerializer < ActiveModel::Serializer
  attributes :id :card_name :details
  belongs_to :collection 
end
