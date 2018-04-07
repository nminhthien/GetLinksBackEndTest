class User < ApplicationRecord
  enum gender: { male: 0, female: 1, other: 2 }
  # encrypt password
  has_secure_password

  # Validations
  validates_presence_of :username, :email, :password_digest
  validates_uniqueness_of :username, :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
end
