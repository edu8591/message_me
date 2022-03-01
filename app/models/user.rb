class User < ApplicationRecord
	has_many :messages

	validates :username, presence: true
	validates :username, length: { in: 3..15 }
	validates :username, uniqueness: true
	has_secure_password
end
