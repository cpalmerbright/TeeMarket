class Wholesaler < ApplicationRecord
  has_many :offers
  has_many :batches, through: :offers
end
