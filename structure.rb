class Node 
    attr_accessor :letter, :frec, :left, :right

    def initialize (frec=0, letter=nil, left=nil, right=nil)
        @frec = frec
        @letter = letter
        @left = left
        @right = right
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

    def get_info
        return "#{@letter} => #{frec} | L:#{@left}  R:#{@right}"
    end

    def info
        return get_info
    end
end

class Tree
    def initialize (root=nil)
        @root = root
    end

    def printData (root=@root)
        puts "#{root.get_letter} => #{root.get_frec}"
        if root.left != nil then printData(root.left) end
        if root.right != nil then printData(root.right) end
    end

end


