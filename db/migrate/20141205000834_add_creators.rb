class AddCreators < ActiveRecord::Migration
  def change
  	add_column :motherboards, :creator, :integer
    add_column :cpus, :creator, :integer
    add_column :gpus, :creator, :integer
    add_column :rams, :creator, :integer
    add_column :hds, :creator, :integer
    add_column :powers, :creator, :integer
  end
end
