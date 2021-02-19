class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # パスワードの正確性を検証, ユーザ登録や編集・削除
  # パスワードをリセット, ログイン情報を保存, emailのフォーマットなどのバリデーション
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :post_images, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  # カラム名（profile_image_id）から_idを除いた名前（profile_image）を記述
  attachment :profile_image
end
