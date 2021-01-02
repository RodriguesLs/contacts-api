class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :neighborhood
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
