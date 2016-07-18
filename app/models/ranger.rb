class Ranger < ApplicationRecord
  has_and_belongs_to_many :parks, inverse_of: :ranger
end
