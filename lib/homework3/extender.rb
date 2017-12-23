# frozen_string_literal: true

module Homework3
  module Extender
    def self.call(_object, _interface)
      _object.singleton_class.prepend _interface
    end
  end
end
