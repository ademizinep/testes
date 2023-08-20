class TextForm < ApplicationRecord
  belongs_to :form_field
  has_many :text_form_fields
end
