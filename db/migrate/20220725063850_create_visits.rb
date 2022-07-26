# frozen_string_literal: true

class CreateVisits < ActiveRecord::Migration[7.0]
  def change
    create_table :visits do |t|
      t.bigint :patient_id
      t.bigint :doctor_id
      t.text :recomendation
      t.boolean :status

      t.timestamps
    end
  end
end
