class AddCpuCompadToMotherboard < ActiveRecord::Migration
  def change
    add_column :motherboards, :cpu_compad, :string
  end
end
