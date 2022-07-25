FactoryBot.define do
  factory :visit do
    patient_id { "MyString" }
    doctor_id { "MyString" }
    recomendation { "MyText" }
    status { false }
  end
end
