require 'rails_helper'

RSpec.describe NumberChoiceField, type: :model do
  it "is valid with valid attributes" do
    number_choice_field = create(:number_choice_field)
    expect(number_choice_field).to be_valid
  end

  it "is not valid without a choice_number" do
    number_choice_field = FactoryBot.build(:number_choice_field, choice_number: nil)
    expect(number_choice_field).not_to be_valid
  end

  it "is valid without a mask" do
    number_choice_field = create(:number_choice_field, mask: nil)
    expect(number_choice_field).to be_valid
  end

  it "is not valid if mask is too long" do
    number_choice_field = FactoryBot.build(:number_choice_field, mask: "a" * 129)
    expect(number_choice_field).not_to be_valid
  end

  it "belongs to a number_choice_form" do
    association = described_class.reflect_on_association(:number_choice_form)
    expect(association.macro).to eq :belongs_to
  end
end
