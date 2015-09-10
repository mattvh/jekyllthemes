module Utils
  class << self
    def absolute_path(path)
      File.expand_path("../../#{path}", __FILE__)
    end

    def find_or_create_folder(path)
      folder = absolute_path(path)
      Dir.mkdir(folder) unless File.exists?(folder)
      folder
    end

    def for_each_file_in(folder)
      Dir[absolute_path("../#{folder}/*")].each do |file|
        yield file
      end
    end
  end
end
