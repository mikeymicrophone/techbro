class Contribution < ApplicationRecord
  belongs_to :benefactor, :optional => true
end
