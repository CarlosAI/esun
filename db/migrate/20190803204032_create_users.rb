class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :password
      t.string :tipo

      t.timestamps
    end
  end
end
