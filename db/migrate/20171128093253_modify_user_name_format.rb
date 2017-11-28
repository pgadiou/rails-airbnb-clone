class ModifyUserNameFormat < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :name, :last_name
    add_column :users, :first_name, :string
  end
end
