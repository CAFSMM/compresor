def getTextFrec (texto)
    textFrec = {}
    texto.each_char {|l| textFrec.key?(l) ? textFrec[l]+=1 : textFrec[l] = 1}
    return textFrec
end

def sortByFrec (textDict)
    return textDict.sort_by{|key, value| value }.to_h
end

def checkText (texto)
    if texto.eql? '' then puts 'texto vacio' end
end

def printNodeList (node_list)
    node_list.each {|n| puts "#{n.get_letter} #{n.get_frec} => #{n}"}
end

def insertInOrder (node, node_list)
    node_list.each do |n|
        if node.get_frec <= n.get_frec
           return node_list.insert node_list.index(n), node
        end
    end
end