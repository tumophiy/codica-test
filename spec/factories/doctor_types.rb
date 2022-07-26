# frozen_string_literal: true

FactoryBot.define do
  factory :doctor_type do
    category { Faker::Lorem.word }
  end
end
