FactoryBot.define do
  factory :form_person do
    transient do
      form { create(:form) }
      person { create(:person) }
    end

    form_id { form&.id }
    person_id { person&.id }
  end
end
