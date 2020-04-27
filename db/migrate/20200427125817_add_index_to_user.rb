class AddIndexToUser < ActiveRecord::Migration[5.2]
  def change
    change_column_null :users, :address, false, 0
  end
end
