class AddDelete < ActiveRecord::Migration[5.0]
  def change
   
    remove_column :images, :project_id, :integer
    
    add_column :images, :instruction_id, :integer 


  end
end
