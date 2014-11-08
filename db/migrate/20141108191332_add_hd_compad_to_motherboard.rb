class AddHdCompadToMotherboard < ActiveRecord::Migration
  def change
    add_column :motherboards, :hd_compad, :string
  end
end
