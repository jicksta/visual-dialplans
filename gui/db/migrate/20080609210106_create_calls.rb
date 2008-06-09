class CreateCalls < ActiveRecord::Migration
  def self.up
    create_table :calls do |t|
      t.string :caller_id
      t.datetime :start_time
      t.datetime :end_time
    end
  end

  def self.down
    drop_table :calls
  end
end
