# frozen_string_literal: true

class Visit < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
end
