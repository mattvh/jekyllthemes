require 'yaml'

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

report = ''

Dir[File.expand_path('../../_posts/*', __FILE__)].each do |file|
  theme = YAML.load(File.read(file).split('---')[1])
  missing = fields - theme.keys
  report << "#{File.basename(file)} - #{missing.join(', ')}\n" unless missing.empty?
end

File.write(File.expand_path('../reports/missing_fields.txt', __FILE__), report)
