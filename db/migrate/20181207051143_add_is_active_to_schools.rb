class AddIsActiveToSchools < ActiveRecord::Migration[5.2]
  def change
    add_column :schools, :is_active, :boolean
  end
end
