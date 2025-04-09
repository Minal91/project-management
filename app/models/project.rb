class Project < ApplicationRecord
  # Associations
  has_many :messages, dependent: :destroy

  # Validations
  validates :name, presence: true
  validates :description, presence: true
  scope :active, -> { where(status: 'active') }
  scope :completed, -> { where(status: 'completed') }
  enum status: [:pending, :active, :completed, :archived]
  # Callbacks
  before_save :set_default_status

  private

  def set_default_status
    self.status ||= status[:pending]
  end
end
