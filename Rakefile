require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "snailgun"
    gem.summary = %Q{Command-line startup accelerator}
    gem.description = %Q{Snailgun accelerates the startup of Ruby applications which require large numbers of libraries}
    gem.authors = ["Brian Candler"]
    gem.email = "b.candler@pobox.com"
    gem.homepage = "http://github.com/candlerb/snailgun"
    gem.executables = ["fautotest", "fconsole", "fcucumber", "frake", "fruby", "snailgun"]
    gem.add_development_dependency "yard", ">= 0"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: (sudo) gem install jeweler"
end

task :default => [:build, :yard]

begin
  require 'yard'
  YARD::Rake::YardocTask.new
rescue LoadError
  task :yard do
    abort "YARD is not available. In order to run yardoc, you must: (sudo) gem install yard"
  end
end
