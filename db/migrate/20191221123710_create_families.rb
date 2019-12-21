class CreateFamilies < ActiveRecord::Migration[5.2]
  def change
    create_table :families do |t|
      t.string :name
      t.string :relationship
      t.date :birthday

      t.timestamps
    end
  end
end
