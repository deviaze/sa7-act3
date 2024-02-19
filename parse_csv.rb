# parse_csv
  # by dev chrysalis!
#
# Act-3 #1
  # Implement a simple CSV parser that reads data from a CSV and transforms it into an array
  # of hashes, with each hash representing a row of the csv.
#
data = File.readlines("data.csv")
labels = data.delete_at(0).split(/[\s,]+/) # cute regex

puts parsed_csv = -> {
  data.map! {|row|
    row.split(',').map.with_index{|val, i| [labels[i], val.strip]}.to_h
  }
}.()
