# frozen_string_literal: true

module Boilerplate
  module CLI
    module Commands
      class RenameCommand < Dry::CLI::Command
        desc "Rename boilerplate code with a new name"

        argument :name, required: true, desc: "New name for the class"

        example ["new_name"]

        def call(name:, **options)
          Boilerplate::Logic::Rename.new(from: "boilerplate", to: name).call
          puts "Renaming boilerplate to '#{name}'"
        end
      end
    end
  end
end
