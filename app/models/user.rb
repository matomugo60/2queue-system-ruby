class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

           # Model associations
  has_many :clients
  has_many :queue_entries

  # Model validations
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

  # Custom methods or additional logic can be added here

  def admin?
    # Add your admin check logic here, e.g., based on a boolean attribute or role
    # For example, if you have an "admin" boolean field in your User model
    admin
  end
end
