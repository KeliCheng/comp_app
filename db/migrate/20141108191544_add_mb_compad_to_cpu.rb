class AddMbCompadToCpu < ActiveRecord::Migration
  def change
    add_column :cpus, :mb_compad, :string
  end
end
