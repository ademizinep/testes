class CreateTextForms < ActiveRecord::Migration[7.0]
  def change
    create_table :text_form do |t|
      t.text :description

      t.references :form_field, foreign_key: true, null: false
      t.timestamps
    end
  end
end
