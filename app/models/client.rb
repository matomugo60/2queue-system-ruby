class Client < ApplicationRecord
    # Include necessary modules for password hashing
    has_secure_password
  
    # Attributes
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: { minimum: 6 } # Adjust minimum password length as needed
    validates :name, presence: true
  
    # Associations
    has_many :queue_entries, dependent: :destroy
  end