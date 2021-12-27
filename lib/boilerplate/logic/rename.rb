# frozen_string_literal: true

require "dry/inflector"

module Boilerplate
  module Logic
    class Rename
      attr_reader :from, :to

      def initialize(from:, to:)
        @from = from
        @to = to
      end

      def call
        rbfiles = File.join("**", "*.rb")

        Dir.glob(rbfiles).each do |file|
          File.open(file, "r+") do |f|
            f.each do |line|
              f.puts rename_module(line)
              f.puts rename_requires(line)
            end
          end

          rename_file(file)
        end
      end

      private

      def rename_module(line)
        return line unless line.include?(inflector.camelize(from))

        updated_line = line.gsub(inflector.camelize(from), inflector.camelize(to))

        puts "renaming #{line} to #{updated_line}"
        # TODO: Actually rename module
        updated_line
      end

      def rename_requires(line)
        return line unless line.match?(/require.*#{inflector.underscore(from)}/)

        updated_line = line.gsub(inflector.underscore(from), inflector.underscore(to))

        puts "renaming #{line} to #{updated_line}"
        # TODO: Actually rename require
        updated_line
      end

      def rename_file(file)
        basename = File.basename(file)
        return unless basename.include?(from)

        new_name = basename.gsub(from, inflector.underscore(to))
        puts "renaming #{basename} to #{new_name}"
        # TODO: Actually rename file
      end

      def inflector
        @inflector ||= Dry::Inflector.new
      end
    end
  end
end
