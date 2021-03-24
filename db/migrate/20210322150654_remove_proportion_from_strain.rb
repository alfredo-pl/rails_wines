class RemoveProportionFromStrain < ActiveRecord::Migration[6.1]
  def change
    remove_column :strains, :proportion, :integer
  end
end
