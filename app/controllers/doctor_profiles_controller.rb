# frozen_string_literal: true

class DoctorProfilesController < ApplicationController
  before_action :current_doctor
  def index
    @patients = if visit_to_doctor == []
                  []
                else
                  visit_to_doctor.each do |x|
                    Patient.where(id: x.patient_id).each do |y|
                      User.find(y.user_id)
                    end
                  end
                end
  end

  def show
    @free_slots = 10 - Visit.where(doctor_id: @current_doctor.id).where(status: 'true').count
  end

  private

  def current_doctor
    @name = current_user.fullname
    @current_doctor = Doctor.find_by(user_id: current_user.id)
  end

  def visit_to_doctor
    Visit.where(doctor_id: @current_doctor.id)
  end
end
