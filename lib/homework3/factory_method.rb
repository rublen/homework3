# frozen_string_literal: true

module Homework3
  module FactoryMethod
    def self.[](sym)
      Module.new do
        define_singleton_method(:included) do |base|
          base.define_singleton_method(sym) do |*args|
            new(*args).public_send(sym)
          end
        end
      end
    end
  end
end
