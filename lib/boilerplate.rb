# frozen_string_literal: true

require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.inflector.inflect "cli" => "CLI"

loader.setup

module Boilerplate; end

loader.eager_load
