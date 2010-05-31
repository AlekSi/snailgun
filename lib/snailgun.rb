require 'snailgun/hacks'
require 'snailgun/rails'
require 'snailgun/sockets'
require 'snailgun/server'

GC.copy_on_write_friendly = true if GC.respond_to?(:copy_on_write_friendly=)
