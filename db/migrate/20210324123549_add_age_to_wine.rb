class AddAgeToWine < ActiveRecord::Migration[6.1]
  def change
    add_column :wines, :age, :integer
  end
end
