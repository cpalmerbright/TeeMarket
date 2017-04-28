class Offer < ApplicationRecord
  belongs_to :batch
  belongs_to :wholesaler
  validates :amount, presence: true, :numericality =>  {:greater_than => 0}
end
