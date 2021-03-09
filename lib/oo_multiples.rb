class Multiples 
    attr_reader :limit, :multiples

    def initialize(limit)
        @limit = limit
        @multiples = collect_multiples
    end

    def collect_multiples
        (3...limit).to_a.reject{|n| n unless n % 3 == 0 || n % 5 == 0}
    end

    def sum_multiples
        multiples.inject(:+)
    end
end
