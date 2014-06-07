class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.references :category, index: true

      t.timestamps
    end
  end
end
