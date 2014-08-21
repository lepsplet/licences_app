class LicenceSites < ActiveRecord::Migration
  def change
    create_table :licences_sites do |t|
      t.references :licence
      t.references :site
    end
    add_index :licences_sites, :licence_id
    add_index :licences_sites, :site_id
  end
end
