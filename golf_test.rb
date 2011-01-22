TESTS = [
	["aaddddffffaa", "d, f"],
	["cat dog ___", "_"],
	["aabbaabbbaa", "b"],
	["abcdefgabcdefg", "a, b, c, d, e, f, g"]
]

TESTS.each_with_index do |test, i|
  trial = test[0]
  expected = test[1]
  
	actual = `ruby #{ARGV[0]}.rb "#{trial}"`.strip
	
	if actual == expected
	  puts "PASSED TEST ##{i}"
	else
	  puts "FAILED TEST ##{i}:"
	  puts "\tExpected: '#{expected}'"
	  puts "\tFound: '#{actual}'"
  end
  puts
end
