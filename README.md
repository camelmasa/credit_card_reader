# credit_card_reader

[![Build Status](https://travis-ci.org/camelmasa/credit_card_reader.png)](https://travis-ci.org/camelmasa/credit_card_reader)
[![Code Climate](https://codeclimate.com/github/camelmasa/credit_card_reader/badges/gpa.svg)](https://codeclimate.com/github/camelmasa/credit_card_reader)
[![Test Coverage](https://codeclimate.com/github/camelmasa/credit_card_reader/badges/coverage.svg)](https://codeclimate.com/github/camelmasa/credit_card_reader)

Detect credit card information.

Instration
----------

Add this line to your application's Gemfile:

    gem 'credit_card_reader'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install credit_card_reader

Usage
-----

```rb
require "credit_card_reader"

detector = CreditCardReader::Detector.new
detector.detect("0123456789012345")
```

Test
----

```
bundle exec rspec
```

Sources
----

- https://github.com/Shopify/active_merchant/blob/master/lib/active_merchant/billing/credit_card_methods.rb
- http://www.skilledmonster.com/2014/04/19/java-regular-expressions-validate-credit-cards/
- http://www.richardsramblings.com/regex/credit-card-numbers/
