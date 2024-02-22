class CreateScores < ActiveRecord::Migration[7.1]
  def change
    create_table :scores do |t|
      t.string :TeamA
      t.string :TeamB
      t.text :LogoA
      t.text :LogoB
      t.datetime :Date
      t.integer :ResultA
      t.integer :ResultB
      t.text :Description

      t.timestamps
    end
  end
end
