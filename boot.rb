ENV['RACK_ENV'] = ENV.fetch('RACK_ENV', 'development')

require 'rubygems'
require 'bundler/setup' # Set up gems listed in the Gemfile
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

Dir.glob(File.expand_path('boot/**/*rb', __dir__)).each do |file|
  require file
end

require 'zeitwerk'
Loader = Zeitwerk::Loader.new
Loader.push_dir(File.expand_path('lib', __dir__))

# You need to run Loader.setup some time after including this file
