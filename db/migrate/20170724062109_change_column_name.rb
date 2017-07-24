class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :jobs, :type, :work_type
  end
end
