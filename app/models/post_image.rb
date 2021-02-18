class PostImage < ApplicationRecord
  belongs_to :user
  attachment :image # _idは含めない。refileを使うルール
end
