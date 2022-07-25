# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:fullname, :email, :password,
                                 :password_confirmation, :role)
  end
end
