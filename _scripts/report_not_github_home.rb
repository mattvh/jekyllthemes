require_relative 'utils'

Utils.find_or_create_folder('reports')

Utils.create_report('reports/not_github_home.txt') do |report|
  Utils.for_each_theme do |theme, file|
    home = theme['homepage']
    report << "#{File.basename(file)} - #{home}\n" unless home.include?('github.com')
  end
end