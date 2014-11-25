class AddCoresToCpu < ActiveRecord::Migration
  def change
    add_column :cpus, :cores, :integer
  end
end