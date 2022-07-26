# frozen_string_literal: true

class CreateDoctorTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :doctor_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
