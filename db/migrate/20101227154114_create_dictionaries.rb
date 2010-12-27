class CreateDictionaries < ActiveRecord::Migration
  def self.up
    create_table :dictionaries do |t|
      t.column :name, :string
      t.column :desc, :string
      t.column :user_id, :integer
    end
  end

  def self.down
    drop_table :dictionaries
  end
end
