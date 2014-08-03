# encoding: utf-8
require 'minitest/autorun'
require_relative '../lib/regexp_m17n'

class RegexpTest < MiniTest::Unit::TestCase
  def test_non_empty_string
    default_encoding = Encoding.default_internal
    Encoding.list.each do |enc|
      Encoding.default_internal = enc
      assert RegexpM17N.non_empty?('.')
    end
    Encoding.default_internal = default_encoding
  end

end
