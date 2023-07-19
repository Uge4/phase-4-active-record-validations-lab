class Post < ApplicationRecord
    belongs_to :author
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: ['Fiction' 'Non-Fiction'] }
    validate :not_click_baity

    def not_click_baity
        self.title != "True Facts"
    end
end
