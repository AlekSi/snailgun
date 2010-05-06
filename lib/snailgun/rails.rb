module Snailgun
  module Rails
    # Returns +true+, if it's a Rails application.
    def self.is_rails_app?
      File.exist?("config/boot.rb")
    end

    # Loads Rails application. Also loads test helpers in test environment.
    def self.load(env)
      STDERR.puts "Loading Rails application (#{env})…"
      ENV['RAILS_ENV'] = env

      require File.expand_path(Dir.pwd) + "/config/boot"
      require File.expand_path(Dir.pwd) + "/config/environment"

      if env =~ /test/
        if File.exist?('test/test_helper.rb')
          $: << 'test'
          require 'test_helper'
        elsif File.exist?('spec/spec_helper.rb')
          require 'spec'
          require 'spec/rails'
        end
      end

      if Rails.respond_to?(:configuration) && Rails.configuration.cache_classes
        STDERR.puts "WARNING: Snailgun does not work well with `cache_classes`!"
        STDERR.puts "Set `config.cache_classes = false` in config/environments/#{env}.rb"
      end
    end
  end
end
