FactoryBot.define do
  factory :text_form_field do
    transient do
      text_form { create(:text_form) }
    end
    
    appointment_time { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    text_form_id { text_form&.id }
  end
end
