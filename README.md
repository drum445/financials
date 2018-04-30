# finance

Methods for performing financial calculations

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  finance:
    github: drum445/finance
```

## Usage

```crystal
require "finance"
```

##### Payment
```crystal
# Excel PMT function: =PMT((9.3/100)/12,36,-12995,6000,0)
puts Finance.payment(12995.0, 6000.0, 9.3, 36, 0) # => 269.92
```
##### Present Value
```crystal
# Excel PMT function: =PV((9.3/100)/12,36,350.50,1000,0)
puts Finance.pv(9.3, 36, 350.50, 1000.00, 0) # => £11,731.21
```

## Contributing

1. Fork it ( https://github.com/drum445/payment/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [drum445](https://github.com/drum445) ed - creator, maintainer
