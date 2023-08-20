class NumberChoiceForm < ApplicationRecord
  belongs_to :form_field
  has_many :number_choice_fields

  validates :name, presence: true, length: { maximum: 128 }
end
