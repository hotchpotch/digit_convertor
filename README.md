
# DigitConvertor

[![Build Status](https://travis-ci.org/hotchpotch/digit_convertor.png?branch=master)](https://travis-ci.org/hotchpotch/digit_convertor)

```
$ gem install digit_covertor
```

# Usage

```
d62 = DigitConvertor.new [('0'..'9'), ('a'..'z'), ('A'..'Z')].map {|r| r.to_a }.flatten
d62.to(98798798735665662) #=> "7iuYfThXxc"
d62.from("7iuYfThXxc")    #=> 98798798735665662
```

```
d8 = DigitConvertor.new %w{☆ ★ ♪ △ ▼ ○ ● ◎}
d8.to(987987987)                #=> "◎♪◎☆◎☆☆☆♪△"
d8.from("◎♪◎☆◎☆☆☆♪△") #=> 987987987
```

# Authors

- Yuichi Tateno (@hotchpotch / id:secondlife)
- @kwappa

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
