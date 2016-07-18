class Park < ActiveRecord::Base
  has_and_belongs_to_many :rangers, inverse_of: :park
  accepts_nested_attributes_for :rangers
end
