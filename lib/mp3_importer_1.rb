require 'pry'
class MP3Importer
    attr_accessor :path
    
    def initialize(path)
      @path = path
    end  
    
    
#     #files

# For this method, FlatIron doesn't much guide other than the suggestion to use Google. In order to load the files from the path directory and normalize the filename to only include the `.mp3`, we'll need to access the underlying file stream.  `Dir` is a class of objects that gives us such access and also allows us to change the directory into the one with our music files. Remember ours are in in: "./spec/fixtures/mp3s" which are stored as test_music_path in the spec files. 
    
    def files
      Dir.each_child(path).map{|filename| filename}
    end
    
    def import
      files.each do |files|
        Song.new_by_filename(files)
      end  
      # binding.pry
    end
end