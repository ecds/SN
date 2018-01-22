class Role < ActiveRecord::Base
  belongs_to :individual
  has_many :priesthoods
end
