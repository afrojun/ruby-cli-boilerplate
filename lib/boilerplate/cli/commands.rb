# frozen_string_literal: true

require "dry/cli"

module Boilerplate
  module CLI
    module Commands
      extend Dry::CLI::Registry

      register "command", BoilerplateCommand
      register "rename", RenameCommand
    end
  end
end
