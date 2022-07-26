# frozen_string_literal: true

class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.references :user

      t.timestamps
    end
  end
end
