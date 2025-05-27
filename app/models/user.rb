class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :created_posts, class_name: "Post", foreign_key: "creator_id", dependent: :destroy
  has_many :editorships, foreign_key: :editor_id, dependent: :destroy
  has_many :edited_posts, through: :editorships, source: :post
end