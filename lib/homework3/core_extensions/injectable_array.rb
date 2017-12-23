# frozen_string_literal: true

module Homework3
  module CoreExtensions
    module InjectableArray
      def simple_inject(memo = nil, sym = nil)
        if block_given?
          memo ||= shift
          raise ArgumentError if sym
          each { |el| memo = yield(memo, el) }
        elsif sym
          each { |el| memo = memo.send(sym, el) }
        elsif memo.is_a? Symbol
          sym, memo = memo, shift
          each { |el| memo = memo.send(sym, el) }
        elsif empty?
          memo = nil
        else
          raise TypeError
        end
        memo
      end
    end
  end
end
