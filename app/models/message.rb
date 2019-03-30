class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence: true
  scope :custom_display, -> {order(:created_last).last(20)}
end
