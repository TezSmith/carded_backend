class Bizcard < ApplicationRecord
  has_many :collections
  has_many :bizcards, through: :collections
end
