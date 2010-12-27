module WordsHelper
  def translate(word)
    tr = Google::Translate.new
    tr.translate :from => "en", :to => "ru", :text => word.word
  end
end
