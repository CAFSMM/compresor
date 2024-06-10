def getTextFrec (texto)
    textFrec = {}
    texto.each_char {|l| textFrec.key?(l) ? textFrec[l]+=1 : textFrec[l] = 1}
    return textFrec
end

def sortByFrec (textDict)
    return textDict.sort_by{|key, value| value }.to_h
end

textDict = sortByFrec getTextFrec(
    'tengo un perro griss que tiene hambre y comio un pedazo de jamon'
)

print textDict
