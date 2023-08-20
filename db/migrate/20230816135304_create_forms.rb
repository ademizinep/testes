class CreateForms < ActiveRecord::Migration[7.0]
  def change
    create_table :forms do |t|
      t.string :name, null: false, limit: 256

      t.timestamps
    end
  end
end
