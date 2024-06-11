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
    if node_list.size <= 2
        break
    end
    
    node_a = node_list.shift
    node_b = node_list.shift
    frec_sum = node_a.get_frec + node_b.get_frec
    new_letter = node_a.get_letter.to_s + node_b.get_letter.to_s
    newNode = Node.new frec_sum, new_letter, node_a, node_b

    not_in = true
    (0..node_list.size).each do |i|
        if node_list[i].get_frec <= newNode.get_frec
            node_list = node_list.insert -i, newNode
            not_in = false
            break
        end
    end
    if not_in
        node_list.push newNode
    end
end

node_a = node_list.shift
node_b = node_list.shift
frec_sum = node_a.get_frec + node_b.get_frec
new_letter = node_a.get_letter.to_s + node_b.get_letter.to_s
newNode = Node.new frec_sum, new_letter, node_a, node_b

puts newNode.info #ESTO ES TODO EL TEXTO RESUMIDO!