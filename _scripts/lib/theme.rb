require_relative 'utils'
require 'yaml'

class Theme
  def initialize(file)
  	@file = file
  end

  attr_reader :file, :front_matter, :description

  def basename
  	@basename ||= File.basename(file)
  end

  def front_matter
  	@front_matter ||= YAML.load(split_text[1])
  end

  def description
  	@description ||= split_text[2..-1]
  end

  def set(key, value)
  	front_matter[key] = value
  end

  def to_s
  	[front_matter.to_yaml, description].join("---\n")
  end

  def write
    File.write(file, to_s)
  end

  private

  def split_text
  	@split_text ||= File.read(file).split('---')
  end
end
