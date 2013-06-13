require 'active_support/core_ext'

class LittleTable

  def initialize input
    @table_string = input
  end

  def length
    @table_string.lines.count - 1
  end

  def headers
    parse_line_number 0
  end

  def rows
    @table_string.lines.to_a[1..-1].map { |line| parse_line line }
  end

  def hashes
    result = []
    rows.each do |row|
      row_hash = {}
      headers.each_with_index do |header, index|
        row_hash[header.parameterize('_').to_sym] = row[index]
      end
      result.push row_hash
    end
    result
  end

  private

  def parse_line_number number
    parse_line @table_string.lines.to_a[number]
  end

  def parse_line text
    text.split('|').reject { |i| !i.present? }.map { |value| value.squish }
  end

end