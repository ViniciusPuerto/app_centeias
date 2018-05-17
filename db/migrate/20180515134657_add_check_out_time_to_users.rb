class AddCheckOutTimeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :check_out_time, :time
  end
end
