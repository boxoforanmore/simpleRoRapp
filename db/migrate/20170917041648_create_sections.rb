class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.integer :crn
      t.integer :number
      t.string :room
      t.string :day
      t.string :begintime
      t.string :endtime
      t.references :professor, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
