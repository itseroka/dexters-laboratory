class Post < ApplicationRecord
    has_rich_text :body
    validates :category_id, presence: true
    belongs_to :category
    has_many :comments, dependent: :destroy
    belongs_to :user
end
