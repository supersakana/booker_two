class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.references :from, index: true, foreign_key: { to_table: :airports }
      t.references :to, index: true, foreign_key: { to_table: :airports }

      t.timestamps
    end
  end
end
