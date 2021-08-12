# frozen_string_literal: true

class Member < ApplicationRecord
<<<<<<< HEAD
  has_and_belongs_to_many :members
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true
  validates :birthday, presence: true
=======
    has_and_belongs_to_many :events
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :phone, presence: true
    validates :phone, numericality: { only_integer: true }
    validates :phone, length: { is: 10 }
    validates :birthday, presence: true
>>>>>>> origin

  def full_name
    "#{first_name} #{last_name}"
  end
end
