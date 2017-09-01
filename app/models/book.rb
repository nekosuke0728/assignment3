class Book < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true
	validates :price, presence: true
	validates :evaluation, presence: true
end
