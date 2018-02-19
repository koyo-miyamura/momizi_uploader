class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :content
  validates  :text      , presence: true
  validates  :user_id   , presence: true
  validates  :content_id, presence: true
end
