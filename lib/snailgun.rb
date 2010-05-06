require 'snailgun/rails.rb'
require 'snailgun/sockets.rb'
require 'snailgun/server.rb'

GC.copy_on_write_friendly = true if GC.respond_to?(:copy_on_write_friendly=)
