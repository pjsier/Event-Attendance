# frozen_string_literal: true

require 'faker'
FactoryBot.define do
  factory :event do |f|
    f.description { Faker::String.description }
    f.event_date { Faker::Date.event_date }
    f.event_location { Faker::Address.event_location }
  end
end
