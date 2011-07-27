class CreateCars < ActiveRecord::Migration
  def self.up
    create_table :cars do |t|
      t.float :tank_size
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :cars
  end
end
