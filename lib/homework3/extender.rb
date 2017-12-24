# frozen_string_literal: true

module Homework3
  module Extender
    def self.call(object, interface)
      object.singleton_class.prepend interface
    end
  end
end
