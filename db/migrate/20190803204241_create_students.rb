class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :nombre
      t.string :nacimiento
      t.string :genero
      t.string :domicilio
      t.string :nombre_padre
      t.string :nombre_madre
      t.string :telefono_contacto
      t.date :fecha_alta

      t.timestamps
    end
  end
end
