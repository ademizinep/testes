class CreateNumberChoiceFields < ActiveRecord::Migration[7.0]
  def change
    create_table :number_choice_fields do |t|
      t.decimal :choice_number, null: false
      t.string :mask, limit: 128

      t.references :number_choice_form, foreign_key: true, null: false
      t.timestamps
    end
  end
end
