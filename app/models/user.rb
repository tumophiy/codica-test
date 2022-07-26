# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  ROLES = %i[admin doctor patient].freeze
  validates :fullname, presence: true

  def self.options
    ROLES.map { |option| option }
  end
end
