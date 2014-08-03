module RegexpM17N
  def self.non_empty?(str)
    /^.+$/ =~ str
  end

  def self.non_empty2?(str)
    Regexp.new('^.+$'.encode(str.encoding)).match(str)
  end
end