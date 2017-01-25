class CreateInstructions < ActiveRecord::Migration[5.0]
  def change
    create_table :instructions do |t|
      t.integer :project_id
      t.string :description
      t.integer :step_number

      t.timestamps
    end
  end
end
