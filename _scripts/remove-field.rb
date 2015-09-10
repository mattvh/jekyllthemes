require_relative 'lib/theme'
require_relative 'lib/utils'

Utils.for_each_file_in('_posts') do |file|
  Theme.new(file).remove('layout').write
end
