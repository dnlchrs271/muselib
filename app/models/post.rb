class Post < ActiveRecord::Base
    belongs_to :user
    validates :user, presence: true
    validates :title, presence: true
    validates :body, presence: true
end
