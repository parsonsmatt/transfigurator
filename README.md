# Transfigurator

Transfigurator is a libray for managing state via event streams.

Managing state can be a pain. Transfigurator seeks to simplify it to the following:

```ruby
events.each do |event|
  transfigurator = transformations(event, state)
  state = transfigurator.call(event, state)
end
```

* `events` is some `Enumerable` of objects representing events.
* `state` is an object that represents the state of your application
* `transformations` is a function that returns a lambda based on the event and the current state.
* `transfigurator` is a function that returns the new state given an event and the current state.

Or, more concisely:

```ruby
events.each { |e| state = transformations(e, state).call(e, state) }
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'transfigurator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install transfigurator

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/transfigurator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
