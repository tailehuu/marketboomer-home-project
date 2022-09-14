require 'csv'
require 'pry'

if ARGV.length == 0
  puts "please input filename"
  exit
end

def show_hierarchy(arr, parent_id = 'nil', level = 0)
  current_indent = 2 * level
  arr.select { |e| e[:parent_id] == parent_id }.sort_by { |e| e[:order] }.each do |elem|
    name = "+ " + elem[:name]
    puts name.rjust(name.length + current_indent)
    show_hierarchy(arr, elem[:id], level + 1)
  end
end

arr = []
csv_contents = CSV.read(ARGV[0])
csv_contents.shift
csv_contents.each_with_index do |row, order|
  arr << {
    name: row[0],
    id: row[1],
    parent_id: row[2],
    order: order
  }
end

# show result
arr = arr.sort_by{ |e| e[:parent_id] }
show_hierarchy(arr)

