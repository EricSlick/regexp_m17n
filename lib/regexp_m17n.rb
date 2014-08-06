module RegexpM17N
  def self.non_empty?(str, enc)
    unless enc.dummy?
      Regexp.new('^.+$'.encode(enc)).match(str.encode(enc))
    else

      if conv = Encoding::Converter.asciicompat_encoding(enc)
        Regexp.new('^.+$'.encode(conv)).match(str.encode(conv))
      else
        111
      end
    end
  end

  def self.non_empty2?(str)

  end
end