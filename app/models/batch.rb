class Batch < ApplicationRecord
  belongs_to :manufacturer
  has_many :offers
  has_many :wholesalers, through: :offers
end
