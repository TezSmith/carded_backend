class Collection < ApplicationRecord
  belongs_to :user
  belongs_to :bizcard
  # has_many :bizcards
end
