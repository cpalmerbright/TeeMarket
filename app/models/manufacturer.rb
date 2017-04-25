class Manufacturer < ApplicationRecord
  has_many :batches
  has_many :offers, through: :batches

end
