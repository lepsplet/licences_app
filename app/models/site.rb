class Site < ActiveRecord::Base
  has_many :contacts, dependent: :destroy
  has_many :licence_sites
  has_many :licences, through: :licence_sites
end
