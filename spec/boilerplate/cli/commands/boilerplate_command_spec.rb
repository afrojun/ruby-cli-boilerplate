# frozen_string_literal: true

require_relative "../../../spec_helper"

RSpec.describe Boilerplate::CLI::Commands::BoilerplateCommand do
  subject { described_class.new }

  it "useful test" do
    subject.call(something_important: "life", custom: "foo")
  end
end
