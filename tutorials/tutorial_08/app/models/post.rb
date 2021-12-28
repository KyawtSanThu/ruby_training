class Post < ApplicationRecord
  validates :title, presence: true 
  validates :description, presence: true 
  validates :public_flag, presence: true 
  validates :created_at, presence: true 
  validates :updated_at, presence: true 
  validates :user_name, presence: true 
end