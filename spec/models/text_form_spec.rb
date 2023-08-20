require 'rails_helper'

RSpec.describe TextForm, type: :model do
  it "belongs to a form_field" do
    association = described_class.reflect_on_association(:form_field)
    expect(association.macro).to eq :belongs_to
  end

  it "has many text_form_fields" do
    association = described_class.reflect_on_association(:text_form_fields)
    expect(association.macro).to eq :has_many
  end
end
