# frozen_string_literal: true

FactoryBot.define do
  factory :visit do
    patient_id { (create :patient).id }
    doctor_id { (create :doctor).id }
    recomendation { Faker::Lorem.sentence }
    status { true }
  end
end
