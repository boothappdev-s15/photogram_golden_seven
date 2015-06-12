class CreateStus < ActiveRecord::Migration
  def change
    create_table :stus do |t|
      t.string :stude
      t.string :student
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
