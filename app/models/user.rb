class User < ApplicationRecord
  has_many :tasks
  has_many :user_performance_parameters
  has_many :performance_parameters, through: :user_performance_parameters
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
  format: { with: VALID_EMAIL_REGEX },
  uniqueness: { case_sensitive: false}
  validates :password, presence: true,
  length: { minimum: 6 }, allow_nil: true
  validates :role, presence: true
  validates :mobile_no, presence: true

end
