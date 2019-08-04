class CreateStudentAllergies < ActiveRecord::Migration[5.2]
  def change
    create_table :student_allergies do |t|
      t.string :student_id
      t.string :descripcion

      t.timestamps
    end
  end
end
