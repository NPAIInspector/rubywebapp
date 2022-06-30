class CreateIds < ActiveRecord::Migration[7.0]
  def change
    create_table :ids do |t|
      t.string :name
      t.string :place

      t.timestamps
    end
  end
end
