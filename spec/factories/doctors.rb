# frozen_string_literal: true

FactoryBot.define do
  factory :doctor do
    user_id { (create :user).id }
    doctor_type { create :doctor_type }
  end
end
