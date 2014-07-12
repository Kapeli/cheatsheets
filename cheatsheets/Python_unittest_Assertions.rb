cheatsheet do
  title 'Python unittest Assertions'
  docset_file_name 'Python_unittest_Assertions'
  keyword 'pyassert'
  source_url 'http://cheat.kapeli.com'
  
  style '
  td.description .name {
    text-align:right;
    white-space:nowrap;
  }
  th:nth-child(1) {
    text-align:right;
  }
  '
  # request headers
  category do

    id 'Assertions'

    header 'Method'
    header 'Checks that'
    header 'New in'

    entry do
      td_notes <<-'END'
      ```
      a == b
      ```
      END
      td_notes ''
      name 'assertEqual(a, b)'
      index_name 'assertEqual'
    end

    entry do
      td_notes <<-'END'
      ```
      a != b
      ```
      END
      td_notes ''
      name 'assertNotEqual(a, b)'
      index_name 'assertNotEqual'
    end

    entry do
      td_notes <<-'END'
      ```
      bool(x) is True
      ```
      END
      td_notes ''
      name 'assertTrue(x)'
      index_name 'assertTrue'
    end

    entry do
      td_notes <<-'END'
      ```
      bool(x) is False
      ```
      END
      td_notes ''
      name 'assertFalse(x)'
      index_name 'assertFalse'
    end

    entry do
      td_notes <<-'END'
      ```
      a is b
      ```
      END
      td_notes '2.7'
      name 'assertIs(a, b)'
      index_name 'assertIs'
    end

    entry do
      td_notes <<-'END'
      ```
      a is not b
      ```
      END
      td_notes '2.7'
      name 'assertIsNot(a, b)'
      index_name 'assertIsNot'
    end

    entry do
      td_notes <<-'END'
      ```
      x is None
      ```
      END
      td_notes '2.7'
      name 'assertIsNone(x)'
      index_name 'assertIsNone'
    end

    entry do
      td_notes <<-'END'
      ```
      x is not None
      ```
      END
      td_notes '2.7'
      name 'assertIsNotNone(x)'
      index_name 'assertIsNotNone'
    end

    entry do
      td_notes <<-'END'
      ```
      a in b
      ```
      END
      td_notes '2.7'
      name 'assertIn(a, b)'
      index_name 'assertIn'
    end

    entry do
      td_notes <<-'END'
      ```
      a not in b
      ```
      END
      td_notes '2.7'
      name 'assertNotIn(a, b)'
      index_name 'assertNotIn'
    end

    entry do
      td_notes <<-'END'
      ```
      isinstance(a, b)
      ```
      END
      td_notes '2.7'
      name 'assertIsInstance(a, b)'
      index_name 'assertIsInstance'
    end

    entry do
      td_notes <<-'END'
      ```
      not isinstnace(a, b)
      ```
      END
      td_notes '2.7'
      name 'assertNotIsInstance(a, b)'
      index_name 'assertNotIsInstance'
    end

    entry do
      td_notes <<-'END'
      ```
      fun(*args, **kwds) raises exc
      ```
      END
      td_notes ''
      name 'assertRaises(exc, fun, *args, **kwds)'
      index_name 'assertRaises'
    end

    entry do
      td_notes <<-'END'
      ```
      round(a-b, 7) == 0
      ```
      END
      td_notes '2.7'
      name 'assertRaisesRegexp(exc, r, fun, *args, **kwds)'
      index_name 'fun(*args, **kwds) raises exc and the message matches regex r'
    end

    entry do
      td_notes <<-'END'
      ```
      round(a-b, 7) == 0
      ```
      END
      td_notes ''
      name 'assertAlmostEqual(a, b)'
      index_name 'assertAlmostEqual'
    end

    entry do
      td_notes <<-'END'
      ```
      round(a-b, 7) != 0
      ```
      END
      td_notes ''
      name 'assertNotAlmostEqual(a, b)'
      index_name 'assertNotAlmostEqual'
    end

    entry do
      td_notes <<-'END'
      ```
      a > b
      ```
      END
      td_notes '2.7'
      name 'assertGreater(a, b)'
      index_name 'assertGreater'
    end

    entry do
      td_notes <<-'END'
      ```
      a >= b
      ```
      END
      name 'assertGreaterEqual(a, b)'
      index_name 'assertGreaterEqual'
    end

    entry do
      td_notes <<-'END'
      ```
      a < b
      ```
      END
      td_notes '2.7'
      name 'assertLess(a, b)'
      index_name 'assertLess'
    end

    entry do
      td_notes <<-'END'
      ```
      a <= b
      ```
      END
      td_notes '2.7'
      name 'assertLessEqual(a, b)'
      index_name 'assertLessEqual'
    end

    entry do
      td_notes <<-'END'
      ```
      r.search(s)
      ```
      END
      td_notes '2.7'
      name 'assertRegexpMatches(s, r)'
      index_name 'assertRegexpMatches'
    end

    entry do
      td_notes <<-'END'
      ```
      not r.search(s)
      ```
      END
      td_notes '2.7'
      name 'assertNotRegexpMatches(a, b)'
      index_name 'assertNotRegexpMatches'
    end

    entry do
      td_notes <<-'END'
      ```
      sorted(a) == sorted(b)
      ```
      Works with unhashable objects
      END
      td_notes ''
      name 'assertItemsEqual(a, b)'
      index_name 'assertItemsEqual'
    end

    entry do
      td_notes <<-'END'
      All the key/value pairs in a exist in b
      END
      td_notes '2.7'
      name 'assertDictContainsSubset(a, b)'
      index_name 'assertDictContainsSubset'
    end

  end # end common non-standard headers

  notes <<-'END'
    * All the assert methods except `assertRaises()` and `assertRaisesRegexp()` accept a `msg` argument that, if specified, is used as the error message on failure.
  END

end # end cheatsheet
