class AddMbCompadToRam < ActiveRecord::Migration
  def change
    add_column :rams, :mb_compad, :string
  end
end
