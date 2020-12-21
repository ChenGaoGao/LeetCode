//
//  102 二叉树的层序遍历.swift
//  LeetCode
//
//  Created by Gao on 2020/12/10.
//  Copyright © 2020 Gao. All rights reserved.
//

import Foundation

// https://leetcode-cn.com/problems/binary-tree-level-order-traversal/


class Solution102 {
    public var resoult: [[Int]] = []
    
    class func solution() {
        
        let solution = Solution102()
        
        let array:[Int?] =  [3,5,1,6,2,0,8,nil,nil,7,4]
        
        let root = TreeNode.arrayToTree(array, 0)
        
//        print(solution.levelOrder(root))
        
        
//        solution.dfsRecu(root, [])
//        print(solution.resoult)
        
        solution.dfs(root)
    }
    
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        if root == nil {
            return [[]]
        }
        
        var resoult: [[Int]] = []
        var array: [TreeNode?] = [root]
        
        while array.count > 0 {
            var levelVal: [Int] = []
            let levelSize = array.count
            
            for _ in 0..<levelSize {
                guard let node = array[0] else {
                    continue
                }
                array.remove(at: 0)
                
                levelVal.append(node.val)
                if let left = node.left {
                    array.append(left)
                }
                if let right = node.right {
                    array.append(right)
                }
            }
            
            resoult.append(levelVal)
        }

        return resoult
    }
    
    
    
    
    func dfsRecu(_ root: TreeNode?, _ trace: [Int]) {
        if root == nil {
            return
        }
        var tempTrace: [Int] = []
        tempTrace.append(contentsOf: trace)
        tempTrace.append(root!.val)
        
        if root?.left == nil && root?.right == nil  {
            resoult.append(tempTrace)
            return
        }
        
        dfsRecu(root?.left, tempTrace)
        dfsRecu(root?.right, tempTrace)
    }
    
    
    
    func dfs(_ root: TreeNode?) {
        if root == nil {
            return
        }
        

//        print(root?.val)
//        dfs(root?.left)
//        dfs(root?.right)
//
//        return
        
        var current = root
        var stackArray: [TreeNode] = []
        
        print("ss ")
        while (current != nil || stackArray.count > 0) {
            
            if current != nil {
                print(current?.val)
                stackArray.append(current!)
                current = current!.left
            }
            else {
                current = stackArray.popLast()?.right
            }
        }
    }
    
    
    func p_preorderTravelsal(root : TreeNode?) -> [Int] {
            
        var res:[Int] = []
        var stack: [TreeNode] = []
        var node = root
            
        while !stack.isEmpty || node != nil {
            if node != nil {
                res.append(node!.val)
                stack.append(node!)
                node = node!.left
            }else{
                node = stack.removeLast().right
            }
        }
        return res
    }
                
}
