class Site < ActiveRecord::Base
    has_many :markers
    has_many :koinas
    has_many :individuals
    has_many :priesthoods
    has_many :inscriptions
    has_many :argonautica_people
    has_many :stops
    has_many :places_referenceds
end
