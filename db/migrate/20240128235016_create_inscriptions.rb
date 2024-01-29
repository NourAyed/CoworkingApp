class CreateInscriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :inscriptions do |t|
      t.string :name
      t.date :date
      t.references :cowork, null: false, foreign_key: true
      t.string :state

      t.timestamps
    end
  end
end
