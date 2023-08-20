class FormField < ApplicationRecord
  belongs_to :form
  has_many :text_forms
  has_many :word_forms
  has_many :number_choice_forms

  validates :name, presence: true, length: { maximum: 128 }
end
