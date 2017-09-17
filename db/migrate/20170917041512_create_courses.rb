class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :number
      t.string :department
      t.integer :credit
      t.string :semester
      t.string :year

      t.timestamps
    end
  end
end
