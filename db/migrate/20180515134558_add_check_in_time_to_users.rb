class AddCheckInTimeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :check_in_time, :time
  end
end
