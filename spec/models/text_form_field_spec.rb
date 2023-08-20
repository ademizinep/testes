require 'rails_helper'

RSpec.describe TextFormField, type: :model do
  it "is valid with valid attributes" do
    text_form_field = create(:text_form_field)
    expect(text_form_field).to be_valid
  end

  it "is not valid without an appointment_time" do
    text_form_field = FactoryBot.build(:text_form_field, appointment_time: nil)
    expect(text_form_field).not_to be_valid
  end

  it "belongs to a text_form" do
    association = described_class.reflect_on_association(:text_form)
    expect(association.macro).to eq :belongs_to
  end
end
