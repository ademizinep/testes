require 'rails_helper'

RSpec.describe FormField, type: :model do
  it "is valid with valid attributes" do
    form_field = create(:form_field)
    expect(form_field).to be_valid
  end

  it "is not valid without a name" do
    form_field = FactoryBot.build(:form_field, name: nil)
    expect(form_field).not_to be_valid
  end

  it "is not valid if name is too long" do
    form_field = FactoryBot.build(:form_field, name: "a" * 129)
    expect(form_field).not_to be_valid
  end

  it "belongs to a form" do
    association = described_class.reflect_on_association(:form)
    expect(association.macro).to eq :belongs_to
  end

  it "has many text_forms" do
    association = described_class.reflect_on_association(:text_forms)
    expect(association.macro).to eq :has_many
  end

  it "has many word_forms" do
    association = described_class.reflect_on_association(:word_forms)
    expect(association.macro).to eq :has_many
  end

  it "has many number_choice_forms" do
    association = described_class.reflect_on_association(:number_choice_forms)
    expect(association.macro).to eq :has_many
  end
end
