require 'webshot'

module ImageGrabber
  class << self
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

    private

    def webshot
      @webshot ||= Webshot::Screenshot.instance
    end
  end
end
