class WordForm < ApplicationRecord
  belongs_to :form_field
  has_many :word_fields

  validates :name, presence: true, length: { maximum: 128 }
end
