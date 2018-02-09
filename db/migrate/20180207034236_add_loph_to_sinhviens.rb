class AddLophToSinhviens < ActiveRecord::Migration[5.1]
  def change
    add_reference :sinhviens, :loph, foreign_key: true
  end
end
