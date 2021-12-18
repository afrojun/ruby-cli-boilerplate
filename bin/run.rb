#!/usr/bin/env ruby
# frozen_string_literal: true

require "bundler/setup"

require_relative "../lib/boilerplate"

Dry::CLI.new(Boilerplate::CLI::Commands).call
