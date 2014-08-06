module RegexpM17N
  def self.non_empty?(str, enc)
    unless enc.dummy?
      Regexp.new('^.+$'.encode(enc)).match(str.encode(enc))
    else
      begin
        if conv = Encoding::Converter.asciicompat_encoding(enc)
          Regexp.new('^.+$'.encode(conv)).match(str.encode(conv))
        else
          111
        end
      rescue Encoding::ConverterNotFoundError #jruby throws this instead of returning nil
        111
      end
    end
  end

  def self.non_empty2?(str)

  end
end