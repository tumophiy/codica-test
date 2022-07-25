# frozen_string_literal: true

class DoctorType < ApplicationRecord
  has_many :doctors
end
