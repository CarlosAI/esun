class AddTelPadreToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :tel_padre, :string
  end
end
