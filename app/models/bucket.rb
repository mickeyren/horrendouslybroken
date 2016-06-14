class Bucket < ActiveRecord::Base
  has_many :posts

  validates :name, presence: true, uniqueness: true, length: { maximum: 64 }

  validates :description, presence: true, length: { maximum: 1500 }
end
