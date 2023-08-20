class CreateNumberChoiceForms < ActiveRecord::Migration[7.0]
  def change
    create_table :number_choice_forms do |t|
      t.string :name, null: false, limit: 128

      t.references :form_field, foreign_key: true, null: false
      t.timestamps
    end
  end
end
