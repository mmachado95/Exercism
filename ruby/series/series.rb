class Series
    attr_reader :series

    def initialize(input)
        @series = input
    end

    def slices(length)
        raise ArgumentError if @series.length < length

        @series.chars.each_cons(length).map(&:join)
    end
end