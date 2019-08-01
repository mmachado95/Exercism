class Matrix
  attr_reader :rows, :columns

  def initialize(input)
    @rows = extract_rows(input)
    @columns = extract_columns(@rows)
  end

  def extract_rows(input)
    input.each_line.map { |row| row.split.map(&:to_i) }
  end

  def extract_columns(rows)
    rows.transpose
  end
end
