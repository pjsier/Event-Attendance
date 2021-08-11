# frozen_string_literal: true

class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.date :birthday
      t.date :anniversary

      t.timestamps
    end
  end
end
