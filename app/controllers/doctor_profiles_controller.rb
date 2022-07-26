# frozen_string_literal: true

class DoctorProfilesController < ApplicationController
  before_action :authenticate_user!
  def index
    @patients = if visit_to_doctor(current_doctor.id) == []
                  []
                else
                  visit_to_doctor(current_doctor.id).each do |x|
                    Patient.where(id: x.patient_id).each do |y|
                      User.find(y.user_id)
                    end
                  end
                end
  end

  def show
    @name = current_user.fullname
    @free_slots = 10 - Visit.where(doctor_id: params[:id]).where(status: 'true').count
  end

  private

  def current_doctor(user = current_user.id)
    Doctor.find_by(user_id: user)
  end

  def visit_to_doctor(doctor = params[:format])
    Visit.where(doctor_id: doctor)
  end
end
