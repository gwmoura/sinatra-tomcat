Warbler::Config.new do |config|
  config.dirs     = %w(views)
  config.includes = FileList["hello.rb"]
  config.jar_name = "hello"
end
