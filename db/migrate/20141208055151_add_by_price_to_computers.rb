class AddByPriceToComputers < ActiveRecord::Migration
  def change
  	add_column :computers, :by_price, :integer
  end
end
