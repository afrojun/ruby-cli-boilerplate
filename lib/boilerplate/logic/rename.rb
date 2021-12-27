# frozen_string_literal: true

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
      end

      def rename_requires(file)
        # TODO:
      end
    end
  end
end
