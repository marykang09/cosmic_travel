class CreateMission < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.integer :scientist_id
      t.integer :planet_id
      t.string :name
    end
  end
end
