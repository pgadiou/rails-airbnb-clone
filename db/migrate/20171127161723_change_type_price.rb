class ChangeTypePrice < ActiveRecord::Migration[5.1]
  def change
    change_column :services, :price, 'integer USING CAST(price AS integer)'
  end
end
