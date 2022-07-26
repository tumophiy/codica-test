# frozen_string_literal: true

class PatientProfilesController < ApplicationController
  before_action :authenticate_user!
  def index
    @doctors = User.joins('INNER JOIN doctors ON doctors.user_id = users.id')
    @visits = Visit.where(patient_id: Patient.find_by(user_id: current_user.id).id)
  end
end
