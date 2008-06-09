class CreateExecutableContexts < ActiveRecord::Migration
  def self.up
    create_table :executable_contexts do |t|
      t.string :context_name
      t.integer :position
    end
  end

  def self.down
    drop_table :executable_contexts
  end
end
