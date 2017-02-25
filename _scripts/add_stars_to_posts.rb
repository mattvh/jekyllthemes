require 'octokit'
require_relative 'lib/theme'
require_relative 'lib/utils'

# Access Token: https://help.github.com/articles/creating-an-access-token-for-command-line-use/
octokit = Octokit::Client.new(access_token: ENV['GITHUB_ACCESS_TOKEN'])

Utils.for_each_file_in('_posts') do |file|
  begin
    theme = Theme.new(file)
    next unless theme.github_repo
    puts theme.github_repo

    repo = octokit.repo(theme.github_repo)
    theme.set('stars', repo[:stargazers_count]).write
  rescue Exception => e
    p e
  end
end
