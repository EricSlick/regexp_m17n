# encoding: utf-8
require 'minitest/autorun'
require_relative '../lib/regexp_m17n'

class RegexpTest < MiniTest::Unit::TestCase
  def test_non_empty_string
    Encoding.list.each do |enc|
      result = RegexpM17N.non_empty?('.', enc)
      assert(result)  unless result == 111
    end
  end

end
