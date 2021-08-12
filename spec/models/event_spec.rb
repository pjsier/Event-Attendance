# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, type: :model do
<<<<<<< HEAD
  subject do
    Event.new(description: 'Sunday Service', event_date: '07-17-2020',
              event_location: '234 Gebroni Road, Raleigh, NC 12345')
  end
  it 'is valid with valid attributes' do
    byebug
=======
  subject { Event.new(description: "Sunday Service", event_date: "2021-07-17", event_location: "234 Gebroni Road, Raleigh, NC 12345" )}
  it "is valid with valid attributes" do
>>>>>>> origin
    expect(subject).to be_valid
  end
  it 'is not valid without a description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a date' do
    subject.event_date = nil
    expect(subject).to_not be_valid
  end
  it 'is not valid without a location' do
    subject.event_location = nil
    expect(subject).to_not be_valid
  end
end
