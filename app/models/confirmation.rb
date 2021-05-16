class Confirmation < ApplicationRecord
  
  # アソシエーション
  belongs_to :user
  belongs_to :report
  

  
end
