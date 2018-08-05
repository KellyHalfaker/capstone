class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :user_events
  has_many :events, through: :user_events
  has_many :comments
  has_many :created_events, class_name: "Event", foreign_key: "event_id"
end
