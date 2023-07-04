class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :prototype

  validates :content, presence: true
  validates :user_id, presence: true
  validates :prototype_id, presence: true
end
