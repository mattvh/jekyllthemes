require_relative 'lib/image_grabber'
require_relative 'lib/utils'

images = [
  ['https://volny.github.io/creative-theme-jekyll', 'creative-theme.jpg']
]

thumbails = Utils.find_or_create_folder('thumbnails')

images.each do |(url, name)|
  path = File.expand_path(name, thumbails)
  ImageGrabber.grab_image(path: path, url: url, width: 250, height: 200)
end

