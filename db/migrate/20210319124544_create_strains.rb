class CreateStrains < ActiveRecord::Migration[6.1]
  def change
    create_table :strains do |t|
      t.string :name
      t.integer :proportion

      t.timestamps
    end
  end
end
