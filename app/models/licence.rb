class Licence < ActiveRecord::Base
  has_many :licence_sites
  has_many :sites, through: :licence_sites
end
