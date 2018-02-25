class PerformanceParameter < ApplicationRecord
  has_many :user_performance_parameters
  has_many :users, through: :user_performance_parameters
  validates :name, presence: true, length: { maximum: 20 },
  uniqueness: { case_sensitive: false }
end
