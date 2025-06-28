class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :delete_all

  validates :title, presence: true, length: {minimum: 1, maximum: 15}
  validates :body, presence: true, length: {minimum: 1, maximum: 500}
end
