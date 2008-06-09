class CreateStateTransitions < ActiveRecord::Migration
  def self.up
    create_table :state_transitions do |t|
      t.foreign_key :call
      t.string :state_name
      t.timestamps
    end
  end

  def self.down
    drop_table :state_transitions
  end
end
