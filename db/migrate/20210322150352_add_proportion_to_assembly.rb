class AddProportionToAssembly < ActiveRecord::Migration[6.1]
  def change
    add_column :assemblies, :proportion, :float
  end
end
