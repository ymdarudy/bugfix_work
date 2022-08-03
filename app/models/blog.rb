class Blog < ApplicationRecord
  # エラー原因: 命名規則違反
  # 修正の意図: has_manyのあとは複数形だぞ
  has_many :comments

  validates :title, presence: true
  validates :content, presence: true
end
