# frozen_string_literal: true

module Homework3
  module FactoryMethod
    def self.[](sym)
      @@sym = sym
      Module.new do
        def self.included(base)
          base.define_singleton_method(@@sym) do |*args|
            new(*args).send(@@sym)
          end
        end
      end
    end
  end
end
