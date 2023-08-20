class NumberChoiceField < ApplicationRecord
  belongs_to :number_choice_form

  validates :choice_number, presence: true
  validates :mask, length: { maximum: 128 }
end
