# frozen_string_literal: true

FactoryBot.define do
  factory :patient do
    user_id { (create :user, :patient).id }
  end
end
