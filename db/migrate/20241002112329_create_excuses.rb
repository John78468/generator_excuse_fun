class CreateExcuses < ActiveRecord::Migration[7.0]
  def change
    create_table :excuses do |t|
      t.string :category
      t.string :part1
      t.string :part2
      t.string :part3

      t.timestamps
    end
  end
end
