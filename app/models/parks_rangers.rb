class ParksRangers < ActiveRecord::Base
  belongs_to :park
  belongs_to :ranger
end
