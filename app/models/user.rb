class User < ApplicationRecord
  validates :password, length: { minimum: 8 }, if: :password_digest_changed?
  has_secure_password
end
