# dynamojs_rails

A light wrapper for using [dynamo.js](http://jordanscales.com/dynamo/) with Ruby on Rails.

## Installation

In your `Gemfile`:

~~~Ruby
gem 'dynamojs_rails'
~~~

Then run:

~~~
$ bundle
~~~

Include `dynamo` in `app/assets/javascripts/application.js`

~~~
//= require dynamo
~~~

## Usage

~~~Ruby
dynamo_tag :span, %w{one two}
# => <span class="dynamo" data-lines="two">one</span>

dynamo_tag :h2, %w{one two}, {
  center: true,
  speed: 100,
  delay: 1000,
  pause: true,
  callback: "dynamoCallback",
  class: "blinking"
}
# => <span class="blinking dynamo" data-callback="dynamoCallback" data-center="true"
  data-delay="1000" data-lines="two" data-pause="true" data-speed="100">one</span>
~~~

All elements with the `.dynamo` class will are already invoked with `$.dynamo()`

### Options

* `speed`: the speed of the transition (*default: 350ms*)
* `delay`: the delay between transitions (*default: 3000ms*)
* `center`: center the text in the dynamo container (*default: false*)
* `pause`: sets up the dynamo, but does not automatically transition (*default: false*)
* `callback`: a javascript function name to be called each time the dynamo container completes a full cycle

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Add a test for it in `spec/dynamo_spec.rb` and make sure tests pass when you run `rake`
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
