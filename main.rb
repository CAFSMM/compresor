require './structure.rb'
require './tools.rb'

texto = ''

if ARGV.size > 0
    if ARGV[0].eql? '-t'
        ARGV.shift
        ARGV.each {|t| texto+=t}
    end
end

if texto.eql? '' then puts 'texto vacio' end

textDict = sortByFrec getTextFrec texto

print textDict
