class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true, length: { in: 3..20 }
  validates :email, uniqueness: true, presence: true, format: URI::MailTo::EMAIL_REGEXP
  validates :password, presence: true, length: { minimum: 8 }
end
