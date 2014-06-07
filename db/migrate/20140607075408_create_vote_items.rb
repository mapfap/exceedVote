class CreateVoteItems < ActiveRecord::Migration
  def change
    create_table :vote_items do |t|
      t.references :topic, index: true
      t.references :project, index: true
      t.references :vote, index: true

      t.timestamps
    end
  end
end
