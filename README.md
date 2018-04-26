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
# Excel PMT function: =PMT((9.3/100)/12,36,-12995,6000,0)
puts Finance.payment(12995.0, 6000.0, 9.3, 36, 0)
```

TODO: Write usage instructions here

## Development

TODO: Write development instructions here

## Contributing

1. Fork it ( https://github.com/[drum445]/payment/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [[drum445]](https://github.com/[drum445]) ed - creator, maintainer
