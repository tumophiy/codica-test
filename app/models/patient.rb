# frozen_string_literal: true

class Patient < ApplicationRecord
  belongs_to :user
  has_many :visits
  has_many :doctors, through: :visits
end
