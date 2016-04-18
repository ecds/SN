class Inscription < ActiveRecord::Base
    has_many :koinas
    has_many :individuals
    has_and_belongs_to_many :priesthoods
    has_many :groupings
    has_many :priesthoods, through: :groupings
  
end
