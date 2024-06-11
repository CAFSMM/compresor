require './structure.rb'
require './tools.rb'

texto = ''
node_list = []


if ARGV.size > 0
    if ARGV[0].eql? '-t'
        ARGV.shift
        ARGV.each {|t| texto+=t}
    end
end
checkText(texto)

sortByFrec(getTextFrec(texto)).each { |element| node_list.append(Node.new(element[1],element[0])) }

node_list.each {|n| puts "#{n.get_letter} #{n.get_frec} => #{n}"}
