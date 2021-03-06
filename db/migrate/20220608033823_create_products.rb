class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :cost, :decimal
      t.column :origin, :string

      t.timestamps
    end
  end
end