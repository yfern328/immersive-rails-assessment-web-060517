class User < ApplicationRecord
  has_secure_password

  before_save validates :username, uniqueness: true

end
