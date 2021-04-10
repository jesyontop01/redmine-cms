class CreateUserProjects < ActiveRecord::Migration[5.2]
  # def change
  #   create_table :user_projects do |t|
  #     t.references :user, foreign_key: true
  #     t.references :project, foreign_key: true

  #     t.timestamps
  #   end
  # end

  def self.up
    create_table :user_projects, :force => true do |t|
      t.column "project_id", :integer, :default => 0, :null => false
      t.column "user_id", :integer, :default => 0, :null => false
    end
  end

  def self.down
    drop_table :user_projects
  end
end
