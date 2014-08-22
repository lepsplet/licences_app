class ChangeType < ActiveRecord::Migration
  def change
    rename_column :licences, :type, :type_of_licence
    rename_column :sites, :type, :type_of_site
  end
end
