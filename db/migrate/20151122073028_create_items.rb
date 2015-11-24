class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :note, :string
      t.column :quantity, :integer
      t.column :type, :string
      t.column :value, :integer
      t.column :stat1, :string
      t.column :stat2, :string
      t.column :stat3, :string
      t.column :skill1, :string
      t.column :skill2, :string
      t.column :skill3, :string
      t.column :damage, :string
      t.column :owner, :integer
      t.column :equipped?, :boolean, default: false
      t.timestamps
    end
  end
end
