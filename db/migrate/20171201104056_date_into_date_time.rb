class DateIntoDateTime < ActiveRecord::Migration[5.1]
  def change
    change_column :bookings, :date, :datetime
    remove_column :bookings, :time
  end
end
