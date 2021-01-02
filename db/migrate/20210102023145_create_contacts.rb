class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.references :kind, null: false, foreign_key: true
      t.text :remark

      t.timestamps
    end
  end
end
