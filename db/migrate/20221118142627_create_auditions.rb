class CreateAuditions < ActiveRecord::Migration[6.1]
  def change
    create_table :auditions do |t|
      t.string :actor
      t.string :location
      t.integer :phone
      t.boolean :hired
      t.integer :role_id
    end
  end
end
