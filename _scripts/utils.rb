require 'webshot'
require 'yaml'

module Utils
  class << self
    def absolute_path(path)
      File.expand_path("../#{path}", __FILE__)
    end

    def find_or_create_folder(path)
      folder = absolute_path(path)
      Dir.mkdir(folder) unless File.exists?(folder)
      folder
    end

    def webshot
      @webshot ||= Webshot::Screenshot.instance
    end

    def grab_image(path:, url:, width:, height:)
      webshot.capture(url, path) do |magick|
        magick.combine_options do |c|
          c.thumbnail "#{width}x#{height}^"
          c.crop "#{width}x#{height}+0+0"
          c.repage.+
        end
      end
    rescue => err
      p err
    end

    def parse_front_matter(file)
      YAML.load(File.read(file).split('---')[1])
    end

    def create_report(path)
      report = ''
      yield report
      File.write(absolute_path(path), report)
    end

    def for_each_theme
      Dir[absolute_path('../_posts/*')].each do |file|
        yield parse_front_matter(file), file
      end
    end
  end
end
