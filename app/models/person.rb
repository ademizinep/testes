class Person < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true
  validates :picture_url, presence: true

  has_many :form_people
  has_many :forms, through: :form_people
end
