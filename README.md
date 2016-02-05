# EasygoingActiveModel

ActiveModel::Model will raise an error if you try to pass in a value that it does not have a setter for.  This version of it just skips over such params.

For example, imagine the following client class, used in association with any API:

```ruby
class ClientClass
    include ActiveModel::Model

    attr_accessor :my_variable_1
    attr_accessor :my_variable_2

end
```

Some controller might have this:

```ruby

ClientClass.new(params)

```

Or some parent class might do a similar thing:

```ruby

class ClientClassParent

    def initialize(params = {})
        @child_class = ClientClass.new(params[:child_class])
    end

end

```

Either way, it is possible the hash being passed in to instantiate ClientClass has some parameter other than :my_variable_1 or :my_variable_2.  If it does, we'll get an exception.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'easygoing_active_model'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install easygoing_active_model

## Usage

Just include EasygoingActiveModel::Model instead of ActiveModel::Model.

```ruby
class ClientClass
    include EasygoingActiveModel::Model

    attr_accessor :my_variable_1
    attr_accessor :my_variable_2

end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/avvo/easygoing_active_model.

