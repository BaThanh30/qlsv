class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  attr_accessor :password, :password_confirmation

end
