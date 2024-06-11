class Node 
    attr_accessor :letter, :frec, :left, :right

    def initialize (frec=0, letter=nil)
        @frec = frec
        @letter = letter
        @left = nil
        @right = nil
    end

    def isLeaf ()
        return true if @left == nil and @right == nil
        return false
    end

    def isLetter ()
        return true if @letter != nil
        return false
    end

    def get_letter () 
        return @letter
    end

    def get_frec ()
        return @frec
    end
end

