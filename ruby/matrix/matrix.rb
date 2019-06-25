class Matrix
  attr_reader :rows, :columns

  def initialize(input)
    @rows = get_rows(input)
    @columns = get_columns(@rows)
  end

  def get_rows(input)
    input.each_line.map { |row| row.split.map(&:to_i) }
  end

  def get_columns(rows)
    rows.transpose
  end
end
