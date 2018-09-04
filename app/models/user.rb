class User < ApplicationRecord
  validates :username, uniqueness: true
  has_many :collections
  has_many :bizcards, through: :collections
end
