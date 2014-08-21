class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :company
      t.string :url
      t.string :type
      t.string :user_name_site
      t.string :password_site
      t.string :gmail_of_site
      t.string :gmail_password
      t.string :dropbox_password

      t.timestamps
    end
  end
end
