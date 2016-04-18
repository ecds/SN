class Individual < ActiveRecord::Base
  belongs_to :inscription
  belongs_to :site,  :class_name => 'Site', :foreign_key => 'site_id'
  belongs_to :site_origin,  :class_name => 'Site', :foreign_key => 'site_origin_id'
  has_many :roles
end
