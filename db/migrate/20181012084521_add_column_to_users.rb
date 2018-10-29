class AddColumnToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :profile, :text
    add_column :users, :degree_of_reliability, :integer
    #add_column :users, :photo, :attachment
  end
end
