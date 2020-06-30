class SumOfMultiples
    attr_reader :divisors

    def initialize(*args)
        @divisors = args
    end

    def to(limit)
        return 0 if divisors.empty? || divisors_within_limits?(limit)
        
        multiples = unique_multiples(limit-1)
        multiples.reduce(0, :+)
    end

    private

    def divisors_within_limits?(limit)
        divisors.all? { |divisor| limit < divisor}
    end

    def unique_multiples(limit)
        multiples = []

        divisors.each do |divisor|
            next if divisor > limit
            
            multiples += 1.upto(limit).select { |dividend| dividend % divisor == 0 }
        end

        multiples.uniq
    end
end