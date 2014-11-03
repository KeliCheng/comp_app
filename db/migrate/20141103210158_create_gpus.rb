class CreateGpus < ActiveRecord::Migration
  def change
    create_table :gpus do |t|
      t.decimal :price
      t.string :vram

      t.timestamps
    end
  end
end
