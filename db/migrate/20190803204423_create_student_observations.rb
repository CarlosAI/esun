class CreateStudentObservations < ActiveRecord::Migration[5.2]
  def change
    create_table :student_observations do |t|
      t.string :student_id
      t.string :descripcion

      t.timestamps
    end
  end
end
