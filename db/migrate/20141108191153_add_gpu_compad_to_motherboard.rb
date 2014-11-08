class AddGpuCompadToMotherboard < ActiveRecord::Migration
  def change
    add_column :motherboards, :gpu_compad, :string
  end
end
