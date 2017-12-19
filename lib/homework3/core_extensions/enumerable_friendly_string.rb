# frozen_string_literal: true

module Homework3
  module CoreExtensions
    module EnumerableFriendlyString
      def to_proc
        if self == '+'
          proc { |memo, el| memo.send(self, el) }
        else
          proc { |elem| elem.send(self) }
        end
      end
    end
  end
end
