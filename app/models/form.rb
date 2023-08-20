class Form < ApplicationRecord
  has_many :form_fields

  validates :name, presence: true, length: { maximum: 256 }
end
