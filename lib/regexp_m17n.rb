module RegexpM17N
  def self.non_empty?(str)
    Regexp.new('^.+$'.encode(str.encoding)).match(str)
  end
end