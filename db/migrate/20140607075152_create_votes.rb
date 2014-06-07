class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :student_id

      t.timestamps
    end
  end
end
