module HomeHelper
  def translate(word)
    translator = Translator.new("en","ru")
    translator.translate(word)
  end
end
