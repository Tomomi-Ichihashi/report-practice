class Client < ApplicationRecord
  # アソシエーション
  has_many :comments
end
