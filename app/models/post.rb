class Post < ApplicationRecord
  has_many :replies, class_name: "Post", foreign_key: "opening_id",
    dependent: :destroy
  belongs_to :opening, class_name: "Post", optional: true

  before_create do
    if !opening.nil?
      self.is_reply = true
      throw :abort if subject || opening.opening
    end
  end
end
