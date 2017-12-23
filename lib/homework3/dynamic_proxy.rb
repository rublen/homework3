# frozen_string_literal: true

module Homework3
  class DynamicProxy
    def initialize(args)
      args.each do |k, v|
        define_singleton_method(k) { v } unless v.nil?
      end
    end
  end
end
