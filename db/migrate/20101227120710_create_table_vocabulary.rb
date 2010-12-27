class CreateTableVocabulary < ActiveRecord::Migration
  def self.up
    create_table :vocabulary do |t|
      t.column :word,                     :string
      t.column :created_at,               :datetime
    end
  end

  def self.down
    drop_table :vocabulary
  end
end
