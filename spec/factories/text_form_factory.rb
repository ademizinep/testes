include FactoryBot::Syntax::Methods

FactoryBot.define do
  factory :text_form do
    transient do
      form_field { create(:form_field) }
    end

    description { Faker::Lorem.paragraph }
    form_field_id { form_field&.id }
  end
end
