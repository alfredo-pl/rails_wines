class AddScoreToWine < ActiveRecord::Migration[6.1]
  def change
    add_column :wines, :score, :numeric, default: 0, limit: 100
  end
end
