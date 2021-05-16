class Report < ApplicationRecord
  # アソシエーション
  belongs_to :user
  belongs_to :client
  has_many :confirmations
  
  # バリデーション 
  validates :body, presence: true
  
  # 他のユーザーがレポートを確認したかどうかの判定メソッド
  def confirmed_by?(user)
    confirmations.where(user_id: user.id).exists?
  end
  
end
