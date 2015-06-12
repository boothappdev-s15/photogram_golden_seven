class AddtitletoInstructors < ActiveRecord::Migration
  def change
  	add_column :instructors, :title, :string
  end
end
