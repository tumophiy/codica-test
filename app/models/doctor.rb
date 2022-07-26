# frozen_string_literal: true

class Doctor < ApplicationRecord
  belongs_to :user
  belongs_to :doctor_type
  has_many :visits
  has_many :patients, through: :visits
end
