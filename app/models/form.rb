class Form < ApplicationRecord
  has_many :form_fields

  validates :name, presence: true, length: { maximum: 256 }

  has_many :form_people
  has_many :people, through: :form_people
end
