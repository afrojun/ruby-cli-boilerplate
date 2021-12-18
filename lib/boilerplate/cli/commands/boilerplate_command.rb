# frozen_string_literal: true

module Boilerplate
  module CLI
    module Commands
      class BoilerplateCommand < Dry::CLI::Command
        desc "What this command does"

        argument :something_important, required: true, desc: "Required argument"

        option :custom, {
          aliases: ["-c", "--custom"],
          default: "wow",
          desc: "Some custom value",
          values: %w[foo bar],
        }

        example [
          "required_arg",
          "required_arg --custom=foo",
          "required_arg -c f",
        ]

        def call(something_important:, **options)
          custom = options.fetch(:custom)

          # Do something
          puts "SUCCESS: Got arg '#{something_important}' and option '#{custom}'"
        end
      end
    end
  end
end
