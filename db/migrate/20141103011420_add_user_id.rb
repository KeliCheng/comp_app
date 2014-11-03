class AddUserId < ActiveRecord::Migration
  def change
  	add_column :computers, :user_id, :int
  end
end
