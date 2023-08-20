class TextFormField < ApplicationRecord
  belongs_to :text_form

  validates :appointment_time, presence: true
end
