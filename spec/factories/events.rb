<<<<<<< HEAD
# frozen_string_literal: true

FactoryBot.define do
  factory :event do
    description { 'MyString' }
    event_date { '2021-07-08' }
    event_location { 'MyString' }
=======
require 'faker'
FactoryBot.define do
  factory :event do |f|
    f.description { Faker::String.description }
    f.event_date { Faker::Date.event_date }
    f.event_location { Faker::Address.event_location }
>>>>>>> origin
  end
end
