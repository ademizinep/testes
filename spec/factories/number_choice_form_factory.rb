FactoryBot.define do
  factory :number_choice_form do
    transient do
      form_field { create(:form_field) }
    end

    name { Faker::Lorem.word }
    form_field_id { form_field&.id }
  end
end
