class Post < ApplicationRecord
  has_many :replies, class_name: "Post", foreign_key: "original_id",
    dependent: :destroy
  belongs_to :original, class_name: "Post", optional: true

  before_create do
    if !original.nil?
      self.is_reply = true
      throw :abort if subject || original.original
    end
  end
end
