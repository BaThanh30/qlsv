class AddSinhvienToLoph < ActiveRecord::Migration[5.1]
  def change
    add_reference :lophs, :sinhvien, foreign_key: true
  end
end
