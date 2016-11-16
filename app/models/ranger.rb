class Ranger < ActiveRecord::Base
	has_and_belongs_to_many :parks, inverse_of: :ranger
	accepts_nested_attributes_for :parks
end
