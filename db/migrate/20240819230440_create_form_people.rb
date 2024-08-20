class CreateFormPeople < ActiveRecord::Migration[7.0]
  def change
    create_table :form_people do |t|
      t.references :form, foreign_key: true, null: false
      t.references :person, foreign_key: true, null: false

      t.timestamps
    end

    add_index :form_people, [:form_id, :person_id], unique: true
  end
end
