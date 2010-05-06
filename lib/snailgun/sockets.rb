module Snailgun
  module Sockets
    require 'socket'

    # Returns socket path.
    def self.socket_name
      ENV['SNAILGUN_SOCK'] || "/tmp/snailgun" # sync with fruby
    end
  end
end
