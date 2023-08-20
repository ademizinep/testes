require 'rails_helper'

RSpec.describe Form, type: :model do
  it "is valid with valid attributes" do
    form = create(:form, name: "Example Form")
    expect(form).to be_valid
  end

  it "is not valid without a name" do
    form = FactoryBot.build(:form, name: nil)
    expect(form).not_to be_valid
  end

  it "is not valid if name is too long" do
    form = FactoryBot.build(:form, name: "a" * 257)
    expect(form).not_to be_valid
  end

  it "has many form_fields" do
    association = described_class.reflect_on_association(:form_fields)
    expect(association.macro).to eq :has_many
  end
end
