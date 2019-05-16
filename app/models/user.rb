class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  has_many :collections
  has_many :bizcards, through: :collections
end
