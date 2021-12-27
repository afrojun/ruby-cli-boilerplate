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
          rename_file(file)
          rename_module(file)
          rename_requires(file)
        end
      end

      private

      def rename_file(file)
        # TODO:
        basename = File.basename(file)
        return unless basename.include?(from)

        new_name = basename.gsub(from, to)
        puts "renaming #{basename} to #{new_name}"
      end

      def rename_module(file)
        # TODO:
        File.open(file, "r+") do |f|
          f.each do |line|
            next unless line.include?(inflector.camelize(from))

            updated_line = line.gsub(inflector.camelize(from), inflector.camelize(to))

            puts "renaming module #{line} to #{updated_line}"
          end
        end
      end

      def rename_requires(file)
        # TODO:
        basename = File.basename(file)
        return unless basename.include?(from)

        new_name = basename.gsub(from, to)
        puts "renaming #{basename} to #{new_name}"
      end

      def inflector
        @inflector ||= Dry::Inflector.new
      end
    end
  end
end
