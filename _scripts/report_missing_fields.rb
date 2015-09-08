require_relative 'utils'

fields = [
  'layout',
  'title',
  'date',
  'homepage',
  'download',
  'demo',
  'author',
  'thumbnail',
  'license',
  'license_link'
]

Utils.find_or_create_folder('reports')

Utils.create_report('reports/missing_fields.txt') do |report|
  Utils.for_each_theme do |theme, file|
    missing = fields - theme.keys
    next if missing.empty?
    report << "#{File.basename(file)} - #{missing.join(', ')}\n"
  end
end