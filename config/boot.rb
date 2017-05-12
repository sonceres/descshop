

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'rubygems'  
require 'rails/commands/server'

module Rails  
  class Server
    alias :default_options_bk :default_options
    def default_options
      default_options_bk.merge!(Host: '192.168.1.43',Port: '80')
    end
  end
end  