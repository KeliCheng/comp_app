class AddMbCompadToHd < ActiveRecord::Migration
  def change
    add_column :hds, :mb_compad, :string
  end
end
