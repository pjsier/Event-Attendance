# frozen_string_literal: true

class Member < ApplicationRecord
  has_and_belongs_to_many :members
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true
  validates :birthday, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
