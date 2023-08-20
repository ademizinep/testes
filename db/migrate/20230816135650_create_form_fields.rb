class CreateFormFields < ActiveRecord::Migration[7.0]
  def change
    create_table :form_fields do |t|
      t.string :name, null: false, limit: 128
      
      t.references :form, foreign_key: true, null: false
      t.timestamps
    end
  end
end
