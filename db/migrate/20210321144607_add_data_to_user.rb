class AddDataToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string, null: true
    add_column :users, :age, :integer, null: true
    add_column :users, :nationality, :string, null: true
    add_column :users, :job, :string, null: true
  end
end
