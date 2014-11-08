class AddRamCompadToMotherboard < ActiveRecord::Migration
  def change
    add_column :motherboards, :ram_compad, :string
  end
end
