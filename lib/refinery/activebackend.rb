require 'refinerycms-core'

module Refinery
  module Activebackend
    require 'refinery/activebackend/engine'
    
    class << self
      attr_writer :root
      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end
    end
  end
end