
class QueueEntry < ApplicationRecord
  # Model associations
  belongs_to :client
  belongs_to :user

  # Model validations
  validates :position, presence: true
  validates :client, presence: true
  validates :user, presence: true

  # Model scopes for querying
  scope :in_queue, -> { where(archived: false) }
  scope :archived, -> { where(archived: true) }

  # Custom methods or additional logic can be added here
end
