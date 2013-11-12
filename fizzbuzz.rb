def fizzbuzz(n)
  raise "ERROR!" if n.nil?
  n = n.to_i
  ret = ""
  ret << "Fizz" if n%3 == 0
  ret << "Buzz" if n%5 == 0
  ret == "" ? n : ret
end

if __FILE__ == $0
  puts fizzbuzz(ARGV[0].dup)
end
