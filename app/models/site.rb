class Site < ActiveRecord::Base
    has_many :markers
    has_many :koinas
    has_many :individuals
    has_many :priesthoods
end
