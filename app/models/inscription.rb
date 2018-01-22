class Inscription < ActiveRecord::Base
    has_many :koinas
    has_many :individuals
    has_and_belongs_to_many :priesthoods
    has_many :groupings
    has_many :priesthoods, through: :groupings
    belongs_to :find_spot,  :class_name => 'Site', :foreign_key => 'find_spot_id'
    has_attached_file :picture
    validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
end
