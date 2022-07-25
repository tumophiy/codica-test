# frozen_string_literal: true

class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.references :user
      t.references :doctor_type

      t.timestamps
    end
  end
end
