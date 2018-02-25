class UserPerformanceParameter < ApplicationRecord
  belongs_to :user
  belongs_to :performance_parameter
end
