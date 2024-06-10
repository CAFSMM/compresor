class Leaf
    attr_accessor :data, :left, :rigth

    def initialize (data, left=nil, rigth=nil)
        @data = data
        @left = left
        @rigth = rigth
    end

    def setLeft (left)
        @left = left
    end

    def setRight (rigth)
        @rigth = rigth
    end

    def setData (data)
        @data = data
    end
    
    def isLeaf
        return true if (@left.eql? nil and @rigth.eql? nil)
        return false
    end

    def insertRigth (data)
        @rigth = Leaf.new(data)
    end

    def insertLeft (data)
        @left = Leaf.new(data)
    end
end

class Tree
    attr_accessor :root

    def initialize (root=nil)
      @root = root
    end
  
    def insert (data, root = @root)
        return nil if root == nil 

        if data >= root.data
            root.rigth == nil ? root.rigth = Leaf.new(data) : insert(data, root.rigth)
        else
            root.left == nil ? root.left = Leaf.new(data) : inser(data,root.left)
        end
    end

    def showData (root)
        if root != nil
            puts root.data
            if not root.isLeaf
                showData(root.left)
                showData(root.rigth)
            end
        end
    end

    def getData (target, root=@root)
        return nil if root == nil

        return nil if root.isLeaf and root.data != target

        if root.data == target
            return root.data
        else
            if target >= root.data
                return getData root.rigth
            else
                return getData root.left
            end
        end
    end
end
