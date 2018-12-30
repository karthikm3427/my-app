class AddParentColumnToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :parent_name, :string
    add_column :students, :parent_contact_no, :bigint
  end
end
