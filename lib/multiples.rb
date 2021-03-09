def collect_multiples(n)
    (3...n).select{|i| (i % 5 == 0 || i % 3 == 0)}
end

puts collect_multiples(1000).inject(:+)

def sum_multiples(n)
    collect_multiples(n).inject(:+)
end