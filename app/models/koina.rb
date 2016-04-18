class Koina < ActiveRecord::Base
  belongs_to :site
  belongs_to :inscription
end
