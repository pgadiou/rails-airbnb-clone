class ChangeTypeDistance < ActiveRecord::Migration[5.1]
  def change
    change_column :services, :distance, 'integer USING CAST(distance AS integer)'
  end
end

# add_column :table, :is_seen, :boolean, default: false
