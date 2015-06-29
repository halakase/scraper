class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end
