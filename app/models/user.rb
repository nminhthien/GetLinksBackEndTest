class User < ApplicationRecord
  enum gender: { male: 0, female: 1, other: 2 }
  # encrypt password
  has_secure_password

  # Validations
  validates_presence_of :username, :email, :password_digest
end
