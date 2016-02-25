class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :location
      t.integer :salary
      t.string :description
      t.string :email

      t.timestamps null: false
    end
  end
end
