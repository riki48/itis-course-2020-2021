class Comment < ApplicationRecord
  belongs_to :task

  validates :content, presence: true, length: { minimum: 5 }
end
