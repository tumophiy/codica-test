# frozen_string_literal: true

class VisitsController < ApplicationController
  before_action :authenticate_user!
  def create
    if free_slots?
      if Visit.create(patient_id: patient, doctor_id: params[:doctor_id], status: 'true')
        flash[:notice] = 'You have succusfully made an appointment.'
        render 'doctor_profiles/show', id: params[:doctor_id]
      end
    else
      flash[:notice] = 'This doctor currently can\'t accept you'
    end
  end

  private

  def patient
    Patient.find_by(user_id: current_user.id).id
  end

  def free_slots?
    (10 - Visit.where(doctor_id: params[:doctor_id]).where(status: 'true').count).positive?
  end
end
