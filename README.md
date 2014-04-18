Binary Converter
===

This is a small library that converts positive binary numbers to decimal.

Usage
===

All you have to do to use the converter is require the `Converter` class and create an instance giving the binary number in the constructor.

```ruby
require_relative "src/converter.rb"
converter = Converter.new(10)
```

Once you have an instance, you can get the decimal form of the number by calling the `to_base_ten` method.

```ruby
converter = Converter.new(11)
converter.to_base_ten ##> 3
```

The constructor is also chainable, so you can perform the whole conversion in one line.

```ruby
Converter.new(101).to_base_ten ##> 5
```

Testing
===

The converter is fully tested using the RSpec library. If you plan on modifying the library, I recommend you also run the tests after each modification. This can be done by navigating to the library root and running `rspec`, assuming you have the RSpec gem installed.

```bash
#!/bin/bash
gem install rspec
cd binary_converter
rspec
```
