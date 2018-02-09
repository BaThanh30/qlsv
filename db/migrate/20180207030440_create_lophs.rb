class CreateLophs < ActiveRecord::Migration[5.1]
  def change
    create_table :lophs do |t|
      t.string :malop
      t.string :tengv
      t.integer :siso
      t.string :tenmh

      t.timestamps
    end
  end
end
