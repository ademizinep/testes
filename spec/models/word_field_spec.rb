require 'rails_helper'

RSpec.describe WordField, type: :model do
  it "is valid with valid attributes" do
    word_field = create(:word_field)
    expect(word_field).to be_valid
  end

  it "is not valid without a name" do
    word_field = FactoryBot.build(:word_field, name: nil)
    expect(word_field).not_to be_valid
  end

  it "is not valid if name is too long" do
    word_field = FactoryBot.build(:word_field, name: "a" * 129)
    expect(word_field).not_to be_valid
  end

  it "belongs to a word_form" do
    association = described_class.reflect_on_association(:word_form)
    expect(association.macro).to eq :belongs_to
  end
end
