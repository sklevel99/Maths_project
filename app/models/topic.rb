class Topic < ApplicationRecord
  has_many :questions, dependent: :destroy
  validates :content, presence: true
end
