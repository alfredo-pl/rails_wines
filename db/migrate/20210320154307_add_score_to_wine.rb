class AddScoreToWine < ActiveRecord::Migration[6.1]
  def change
    add_column :wines, :score, :integer, default: 0, limit: 100
  end
end
