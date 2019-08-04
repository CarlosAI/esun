class AddTelMadreToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :tel_madre, :string
  end
end
