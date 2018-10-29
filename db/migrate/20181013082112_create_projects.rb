class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.string :title
    	t.text :details
    	t.integer :required_reliability
    	t.string :organizer
    	t.integer :user_id
      t.timestamps null: false
    end
  end
end
