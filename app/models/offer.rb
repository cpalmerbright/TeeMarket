class Offer < ApplicationRecord
  belongs_to :batch
  belongs_to :wholesaler
  validates :amount, presence: true, :numericality =>  {:greater_than_or_equal_to => 0}
end
