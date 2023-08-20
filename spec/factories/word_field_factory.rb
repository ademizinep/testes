FactoryBot.define do
  factory :word_field do
    transient do
      word_form { create(:word_form) }
    end

    name { Faker::Lorem.word }
    word_form_id { word_form&.id }
  end
end
