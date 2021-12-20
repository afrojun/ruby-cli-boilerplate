# frozen_string_literal: true

require_relative "../../../spec_helper"

RSpec.describe(Boilerplate::CLI::Commands::BoilerplateCommand) do
  subject(:boilerplate) { described_class.new }

  it "useful test" do
    expect($stdout).to(receive(:puts).with(/^SUCCESS:.*/))

    boilerplate.call(something_important: "life", custom: "foo")
  end
end
