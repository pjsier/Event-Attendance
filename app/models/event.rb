# frozen_string_literal: true

class Event < ApplicationRecord
  has_and_belongs_to_many :events
  validates :description, presence: true
  validates :event_date, presence: true
  validates :event_location, presence: true
end
