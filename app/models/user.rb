class User < ApplicationRecord
    validates :username, presence: true, length: {minimum:3, maximum:25}, uniqueness: { case_sensitive: false }
    validates :email, presence: true, length: {minimum:3, maximum:105}, uniqueness: { case_sensitive: false },format: { with: /[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}/ }
end