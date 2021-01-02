class CreateKindPhones < ActiveRecord::Migration[6.0]
  def change
    create_table :kind_phones do |t|
      t.string :kind

      t.timestamps
    end
  end
end
