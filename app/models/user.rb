class User < ApplicationRecord
  validates :name, :dob, :email, :phone_number, :address, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email format" }
  validates :email, uniqueness: { case_sensitive: false }
end
