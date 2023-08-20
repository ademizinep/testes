class CreateWordFields < ActiveRecord::Migration[7.0]
  def change
    create_table :word_fields do |t|
      t.string :name, null: false, limit: 128

      t.references :word_form, foreign_key: true, null: false
      t.timestamps
    end
  end
end
