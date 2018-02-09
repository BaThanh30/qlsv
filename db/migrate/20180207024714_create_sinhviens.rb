class CreateSinhviens < ActiveRecord::Migration[5.1]
  def change
    create_table :sinhviens do |t|
      t.string :hoten
      t.integer :namsinh
      t.string :diachi
      t.string :hinh
      

      t.timestamps
    end
  end
end
