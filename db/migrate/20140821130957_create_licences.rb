class CreateLicences < ActiveRecord::Migration
  def change
    create_table :licences do |t|
      t.string :name
      t.string :type
      t.date :date
      t.integer :quantity
      t.string :web_site_of_purchase
      t.string :company_of_purchase
      t.decimal :price

      t.timestamps
    end
  end
end
