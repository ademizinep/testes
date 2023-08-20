require 'rails_helper'

RSpec.describe NumberChoiceForm, type: :model do
  it "is valid with valid attributes" do
    number_choice_form = create(:number_choice_form)
    expect(number_choice_form).to be_valid
  end

  it "is not valid without a name" do
    number_choice_form = FactoryBot.build(:number_choice_form, name: nil)
    expect(number_choice_form).not_to be_valid
  end

  it "is not valid if name is too long" do
    number_choice_form = FactoryBot.build(:number_choice_form, name: "a" * 129)
    expect(number_choice_form).not_to be_valid
  end

  it "belongs to a form_field" do
    association = described_class.reflect_on_association(:form_field)
    expect(association.macro).to eq :belongs_to
  end

  it "has many number_choice_fields" do
    association = described_class.reflect_on_association(:number_choice_fields)
    expect(association.macro).to eq :has_many
  end
end
