class CopyAllWordsToMyDic < ActiveRecord::Migration
  def self.up
    dic = Dictionary.find_by_name('english')
    Word.update_all("dictionary_id = #{dic.id}") if dic
  end

  def self.down
  end
end
