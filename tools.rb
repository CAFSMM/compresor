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
