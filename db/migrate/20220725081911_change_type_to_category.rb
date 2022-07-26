# frozen_string_literal: true

class ChangeTypeToCategory < ActiveRecord::Migration[7.0]
  def change
    rename_column(:doctor_types, :type, :category)
  end
end
