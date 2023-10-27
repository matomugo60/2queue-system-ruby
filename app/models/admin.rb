class Admin < ApplicationRecord
    # Include necessary modules for password hashing
    has_secure_password
  
    # Validations
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: { minimum: 6 } # Adjust minimum password length as needed
    validates :name, presence: true
  end