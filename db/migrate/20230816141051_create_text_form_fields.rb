class CreateTextFormFields < ActiveRecord::Migration[7.0]
  def change
    create_table :text_form_field do |t|
      t.timestamp :appointment_time, null: false

      t.references :text_form, foreign_key: true, null: false
      t.timestamps
    end
  end
end
