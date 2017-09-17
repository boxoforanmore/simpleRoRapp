class CreateProfessors < ActiveRecord::Migration[5.1]
  def change
    create_table :professors do |t|
      t.string :name
      t.string :office
      t.string :phone
      t.string :email
      t.string :department

      t.timestamps
    end
  end
end
