class Transpose
  def self.transpose(input)
    return "" if input.empty?

    lines = input.split("\n")
    longest_line_size = lines.map(&:size).max
    matrice = lines.map { |line| line.ljust(longest_line_size, "\0").chars }

    matrice.transpose.map(&:join).join("\n").gsub(/\0+$/, "").gsub(/\0/, " ")
  end
end