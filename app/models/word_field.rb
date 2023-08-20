class WordField < ApplicationRecord
  belongs_to :word_form

  validates :name, presence: true, length: { maximum: 128 }
end
