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

### Examples (showing rounded results)

##### Payment - Float64
```crystal
# Excel function: =PMT((9.3/100)/12,36,-12995,6000,0)
puts Finance.pmt(9.3, 36, -12995, 6000, 0) # => 269.92

# Excel function: =PMT((9.3/100)/12,36,-12995,6000,1)
puts Finance.pmt(9.3, 36, -12995, 6000, 1) # => 267.84
```
##### Present Value - Float64
```crystal
# Excel function: =PV((9.3/100)/12,36,350.50,1000,0)
puts Finance.pv(9.3, 36, 350.50, 1000, 0) # => -11731.21

# Excel function: =PV(0,36,350.50,1000,0)
puts Finance.pv(0, 36, 350.50, 1000, 0) # => -13618.00

# Excel function: =PV((9.3/100)/12,36,350.50,1000,1)
puts Finance.pv(9.3, 36, 350.50, 1000, 1) # => -11816.26
```
##### NPER - Float64
```crystal
# Excel function: =NPER((10/100)/12,2625.73,-81374.62,0,0)
puts Finance.nper(10, 2625.73, -81374.62, 0, 0) # => 36

# Excel function: =NPER(0,2625.73,-81374.62,0,1)
puts Finance.nper(0, 2625.73, -81374.62, 0, 1) # => 31
```
##### Future Value - Float64
```crystal
# Excel function: =FV((5.8/100)/12,48,2265.63,-133781.21,0)
puts Finance.fv(5.8, 48, 2265.63, -133781.21, 0) # => 46550.0

# Excel function: =FV((5.8/100)/12,48,2265.63,-133781.21,1)
puts Finance.fv(5.8, 48, 2265.63, -133781.21, 1) # => 45960.0

# Excel function: =FV((10/100)/12,36,2625.73,-81374.62,0)
puts Finance.fv(10, 36, 2625.73, -81374.62, 0) # => 0.0
```
##### Rate - Float64
```crystal
# Excel function: =RATE(60,1600,-75304.59,0) * 12 * 100
puts Finance.rate(60, 1600, -75304.59, 0) # => 10.0

# Excel function: =RATE(30,4337.33,-112072.94,0) * 12 * 100
puts Finance.rate(30, 4337.33, -112072.94, 0) # => 11.9

# Excel function: =RATE(18,1909.53,-103616.44,77477) * 12 * 100
puts Finance.rate(18, 1909.53, -103616.44, 77477) # => 6.0
```

## Contributing

1. Fork it ( https://github.com/drum445/payment/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [drum445](https://github.com/drum445) ed - creator, maintainer
