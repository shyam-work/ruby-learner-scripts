#!/usr/bin/ruby
require 'test/unit'

class TestMe < Test::Unit::TestCase

def test_add
    s = 1 + 1
    assert_equal(2, s)
end

end
