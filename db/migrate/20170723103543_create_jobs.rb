class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.string :suburb
      t.integer :salary
      t.string :description
      t.string :type
      t.string :source_link

      t.timestamps
    end
  end
end
