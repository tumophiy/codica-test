# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    fullname { Faker::Name.name }
    email { Faker::Internet.email }
    password { Faker::Internet.password(min_length: 6) }

    trait :admin do
      role { :admin }
    end

    trait :doctor do
      role { :doctor }
    end

    trait :patient do
      role { :patient }
    end
  end
end
