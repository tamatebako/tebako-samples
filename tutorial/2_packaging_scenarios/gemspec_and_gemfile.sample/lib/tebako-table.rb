# frozen_string_literal: true

# Tebako tutorial: Lesson 2

require "text-table"
require_relative "version"

module Test
  class TebakoTable
    def msg
      table = Text::Table.new
      table.head = %w[A B]
      table.rows = [%w[a1 b1]]
      table.rows << %w[a2 b2]
      table
    end

    def run
      puts <<~MSG
        Running packaged tebako-table gem version #{VERSION}.
        You shall see a nice text table below.

        #{msg}
      MSG
    end
  end
end
