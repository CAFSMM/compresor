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

while true
    if node_list.size <= 1 then break end
    
    node_a = node_list.shift
    node_b = node_list.shift

    newNode = Node.new(
        node_a.get_frec+node_b.get_frec,
        nil,
        node_a,
        node_b
    )
    puts node_list.size
    puts newNode.info
    sleep 1
end

#node_list.each {|n| puts n.info ; sleep 0.5}
