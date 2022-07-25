# frozen_string_literal: true

class DoctorType < ApplicationRecord
  has_one :user
end
