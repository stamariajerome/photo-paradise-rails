class Photo < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true, length: { minimum: 25, maximum: 200 }
  validates :url, presence: true
end
