# frozen_string_literal: true

require "dry/cli"
require_relative "commands/boilerplate_command"

module Boilerplate
  module CLI
    module Commands
      extend Dry::CLI::Registry

      register "command", BoilerplateCommand
    end
  end
end
