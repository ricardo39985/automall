# frozen_string_literal: true

class Listing < ApplicationRecord
  validates :year, :make, :model, :miles, presence: true
end
