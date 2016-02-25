class DropJoinTableJobUsers < ActiveRecord::Migration
 def up
    drop_table :job_users
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
