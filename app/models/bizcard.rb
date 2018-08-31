class Bizcard < ApplicationRecord
  belongs_to :collection
  belongs_to :user
end
