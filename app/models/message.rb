class Message < ApplicationRecord
  # Associations
  belongs_to :project
  belongs_to :admin_user, class_name: 'AdminUser'

  # Validations
  validates :title, presence: true
  validates :description, presence: true
  validates :status, inclusion: { in: %w[unread read archived] }
end
