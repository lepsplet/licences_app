class LicenceSite < ActiveRecord::Base
  belongs_to :site
  belongs_to :licence
end
