class AddCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.column :name, :string
      t.column :class1, :string
      t.column :level1, :integer
      t.column :class2, :string
      t.column :level2, :integer
      t.column :strength, :integer
      t.column :constitution, :integer
      t.column :intelligence, :integer
      t.column :wisdom, :integer
      t.column :charisma, :integer
      t.column :hit_points, :integer
      t.timestamps
    end
  end
end
