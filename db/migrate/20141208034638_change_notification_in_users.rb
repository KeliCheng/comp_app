class ChangeNotificationInUsers < ActiveRecord::Migration
  def change
  	change_column :users, :notifications, :integer
  end
end
