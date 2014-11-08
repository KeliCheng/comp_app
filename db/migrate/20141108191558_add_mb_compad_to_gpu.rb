class AddMbCompadToGpu < ActiveRecord::Migration
  def change
    add_column :gpus, :mb_compad, :string
  end
end
