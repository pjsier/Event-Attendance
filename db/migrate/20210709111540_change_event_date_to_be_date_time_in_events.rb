class ChangeEventDateToBeDateTimeInEvents < ActiveRecord::Migration[6.1]
  def change
    change_column :Events, :event_date, :datetime
  end
end
