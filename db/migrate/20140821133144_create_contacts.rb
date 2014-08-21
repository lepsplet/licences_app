class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :site_id
      t.string :name
      t.string :company
      t.string :telephone
      t.string :email

      t.timestamps
    end
    add_index :contacts, :site_id
  end
end
