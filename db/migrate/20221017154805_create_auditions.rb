class CreateAuditions < ActiveRecord::Migration[5.2]
  def change
    create_table :auditions do |t|
      t.string :actor, :location
      t.integer :phone, :role_id
      t.boolean :hired
    end
  end
end
