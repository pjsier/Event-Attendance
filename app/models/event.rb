# frozen_string_literal: true

class Event < ApplicationRecord
<<<<<<< HEAD
  has_and_belongs_to_many :events
  validates :description, presence: true
  validates :event_date, presence: true
  validates :event_location, presence: true
=======
    has_and_belongs_to_many :members
    validates :description, presence: true
    validates :event_date, presence: true
    validates :event_location, presence: true

    def start_time
        self.event_date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
    end
>>>>>>> origin
end
