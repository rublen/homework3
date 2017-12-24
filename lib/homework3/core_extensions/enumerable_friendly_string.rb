# frozen_string_literal: true

module Homework3
  module CoreExtensions
    module EnumerableFriendlyString
      def to_proc
        if self == '+'
          proc { |memo, el| memo.public_send(self, el) }
        else
          proc { |el| el.public_send(self) }
        end
      end
    end
  end
end
