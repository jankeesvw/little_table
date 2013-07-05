[![Build Status](https://travis-ci.org/jankeesvw/little_table.png)](https://travis-ci.org/jankeesvw/little_table)
[![Code Climate](https://codeclimate.com/github/jankeesvw/little_table.png)](https://codeclimate.com/github/jankeesvw/little_table)
[![Coverage Status](https://coveralls.io/repos/jankeesvw/little_table/badge.png)](https://coveralls.io/r/jankeesvw/little_table)
[![Dependency Status](https://gemnasium.com/jankeesvw/little_table.png)](https://gemnasium.com/jankeesvw/little_table)

# LittleTable

Little Tabel is a Ruby gem that converts [Cucumber data tables](http://cukes.info/step-definitions.html#data_tables) to useful objects

For example:
```ruby
scenarios = <<-EOS
  | column1      | column2 |
  | 10           | 5       |
  | 12           | 9       |
EOS
      
table = LittleTable.new scenarios
puts table.hashes  # [{:column1=>"10", :column2=>"5"}, {:column1=>"12", :column2=>"9"}]
puts table.headers # ["column1", "column2"]
puts table.cells   # [["10", "5"], ["12", "9"]]
```  
## Installation

Add this line to your application's Gemfile:

    gem 'little_table'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install little_table

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
