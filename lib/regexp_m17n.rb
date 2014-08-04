module RegexpM17N
  def self.non_empty?(str, enc)
    Regexp.new('^.+$'.encode(enc)).match(str.encode(enc))
  end

  def self.non_empty2?(str)

  end
end