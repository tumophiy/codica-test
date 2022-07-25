# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    case resource.role
    when 'admin'
      admin_root_path
    when 'doctor'
      doctor_path
    when 'patient'
      Patient.create({ patient_id: User.last.id })
      root_path
    end
  end
end
