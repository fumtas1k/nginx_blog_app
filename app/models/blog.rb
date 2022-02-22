class Blog < ApplicationRecord
  validates_presence_of :title, :content
  scope :default_order, -> (num = 5) {
    order(created_at: :desc).limit(num)
  }
end
