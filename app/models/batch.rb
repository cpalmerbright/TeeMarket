
require 'action_view'
include ActionView::Helpers::DateHelper

class Batch < ApplicationRecord
  belongs_to :manufacturer
  has_many :offers
  has_many :wholesalers, through: :offers

  def expired?
    time_elapsed >= 7*24*60*60
  end

  def time_elapsed
    Time.now.utc - created_at
  end

  def time_remaining
    distance_of_time_in_words(7*24*60*60 - time_elapsed)
  end

  def description
    "x#{quantity} - #{fabric}, #{color}"
  end

  def highest_current_offer
    offers.first
  end
end
