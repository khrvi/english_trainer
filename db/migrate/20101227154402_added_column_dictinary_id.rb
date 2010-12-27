class AddedColumnDictinaryId < ActiveRecord::Migration
  def self.up
    add_column :words, :dictionary_id, :integer
    dic = Dictionary.create!({:name => 'Default'})
    Word.update_all( "dictionary_id = #{dic.id}")
  end

  def self.down
    remove_colomn :words, :dictinary_id
  end
end
