class CreateCountVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :count_votes do |t|
      t.integer :id_votante, id: false
      t.integer :id_candidate, id: false

      t.timestamps
    end
  end
end
