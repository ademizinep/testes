require 'rails_helper'

RSpec.describe WordForm, type: :model do
  it "is valid with valid attributes" do
    word_form = create(:word_form)
    expect(word_form).to be_valid
  end

  it "is not valid without a name" do
    word_form = FactoryBot.build(:word_form, name: nil)
    expect(word_form).not_to be_valid
  end

  it "is not valid if name is too long" do
    word_form = FactoryBot.build(:word_form, name: "a" * 129)
    expect(word_form).not_to be_valid
  end

  it "belongs to a form_field" do
    association = described_class.reflect_on_association(:form_field)
    expect(association.macro).to eq :belongs_to
  end

  it "has many word_fields" do
    association = described_class.reflect_on_association(:word_fields)
    expect(association.macro).to eq :has_many
  end
end
