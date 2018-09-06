class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "user_id"
  has_many :event_tags
  has_many :tags, through: :event_tags
  has_many :images
  has_many :comments
  has_many :user_events
  has_many :users, through: :user_events

  def image_urls
    return images.map{|image| image[:url]}
  end

  def tag_names
    return tags.map{|tag| tag[:name]}
  end

  def easy_comments
    return comments.map{|comment| {username: comment.user.username, content: comment.content, created_at:comment.created_at} }
  end

  def attendees
    return users.map {|user| user.username}
  end

end
