FactoryBot.define do
  factory :number_choice_field do
    transient do
      number_choice_form { create(:number_choice_form) }
    end
    
    choice_number { Faker::Number.decimal(l_digits: 2, r_digits: 2) }
    mask { Faker::Name.initials(number: 5) }
    number_choice_form_id { number_choice_form&.id }
  end
end
