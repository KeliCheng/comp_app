class AddNames < ActiveRecord::Migration
  def change
    add_column :motherboards, :name, :string
    add_column :cpus, :name, :string
    add_column :gpus, :name, :string
    add_column :rams, :name, :string
    add_column :hds, :name, :string
    add_column :powers, :name, :string
  end
end