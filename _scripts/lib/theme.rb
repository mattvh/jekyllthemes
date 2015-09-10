require_relative 'utils'

class Theme
  def initialize(file)
  	@file = file
  end

  attr_reader :file

  def basename
  	@basename ||= File.basename(file)
  end

  def front_matter
  	@front_matter ||= parse_yaml(split_text[1])
  end

  def description
  	@description ||= split_text[2..-1].join('---')
  end

  def set(key, value)
  	front_matter[key] = value
    self
  end

  def remove(key)
    front_matter.delete(key)
    self
  end

  def to_s
    "---\n#{to_yaml(front_matter)}---#{description}"
  end

  def write
    File.write(file, to_s)
  end

  def method_missing(key)
    front_matter[key.to_s]
  end

  private

  def parse_yaml(string)
    string.split("\n").reduce({}) do |hash, line|
      split_line = line.split(': ')
      next hash unless split_line.length > 1
      hash.merge(split_line[0] => split_line[1..-1].join)
    end
  end

  def split_text
  	@split_text ||= File.read(file).force_encoding('UTF-8').split('---')
  end

  def to_yaml(hash)
    hash.map { |k, v| "#{k}: #{format_dates(v)}\n" }.join
  end

  def format_dates(value)
    value.respond_to?(:strftime) ? value.strftime("%F %T") : value
  end
end
