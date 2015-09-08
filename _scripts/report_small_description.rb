require_relative 'utils'

Utils.find_or_create_folder('reports')

Utils.create_report('reports/small_description.txt') do |report|
  Utils.for_each_theme do |theme, file|
    description = File.read(file).split('---')[2]
    report << "#{File.basename(file)} - #{description.length}\n" if description.length < 15
  end
end
