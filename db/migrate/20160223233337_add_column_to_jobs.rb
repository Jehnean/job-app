class AddColumnToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :business_name, :string
  end
end
