# Ruby CLI Boilerplate

## Functionality

This is a Ruby 3.0 CLI boilerplate to help accelerate initial setup of CLI projects.

## Install

Make sure you have Ruby 3.0 installed, then run:

```sh
bundle
```

## Usage

```sh
# By default we will run the total views aggregator
bin/run.rb command something_important

# Specify the following options to do something different
bin/run.rb command something_important -c foo
```

To get a full list of available commands, or help on a specific on, use the `--help` or `-h` flag:

```sh
bin/run.rb -h
```

## Tests

```sh
rspec
```

A coverage report will be generated after the tests run.
