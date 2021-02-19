class PostImage < ApplicationRecord
  belongs_to :user
  attachment :image # _idは含めない。refileを使うルール
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
