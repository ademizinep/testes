FactoryBot.define do
  factory :form_field do
    transient do
      form { create(:form) }
    end

    name { Faker::Name.name }
    form_id { form&.id }
  end
end
