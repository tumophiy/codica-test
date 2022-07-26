# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    case resource.role
    when 'admin'
      admin_root_path
    when 'doctor'
      category = DoctorType.find_or_create_by(category: 'Default')
      Doctor.find_or_create_by(user_id: current_user.id, doctor_type_id: category.id)
      doctor_profiles_index_path
    when 'patient'
      Patient.find_or_create_by(user_id: current_user.id)
      patient_profiles_index_path
    end
  end
end
