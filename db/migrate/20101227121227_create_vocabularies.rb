class CreateVocabularies < ActiveRecord::Migration
  def self.up
    create_table :vocabularies do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :vocabularies
  end
end
