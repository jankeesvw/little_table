[![Build Status](https://travis-ci.org/jankeesvw/little_table.png)](https://travis-ci.org/jankeesvw/little_table)
[![Code Climate](https://codeclimate.com/github/jankeesvw/little_table.png)](https://codeclimate.com/github/jankeesvw/little_table)
[![Dependency Status](https://gemnasium.com/jankeesvw/little_table.png)](https://gemnasium.com/jankeesvw/little_table)

# LittleTable

Little Tabel converts cucumber like tables to usefull objects

    | column1 | column2  |
    | cell1x1  | cell1x2 |
    | cell2x1  | cell2x2 |

Converts to:

    [{column1: 'cell1x1', column2: 'cell1x2'}, {column1: 'cell2x1', column2: 'cell2x2'}] # hashes
    ['column1','column2'] # headers
    [['cell1x1', 'cell1x2'], ['cell2x1', 'cell2x2']]  # rows    
  

## Installation

Add this line to your application's Gemfile:

    gem 'little_table'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install little_table

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
