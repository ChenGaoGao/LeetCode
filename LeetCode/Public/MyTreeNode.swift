//
//  MyTreeNode.swift
//  LeetCode
//
//  Created by Gao on 2020/12/10.
//  Copyright © 2020 Gao. All rights reserved.
//

import Foundation


/**
 * Definition for a binary tree node.
 */
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    
    
    class func arrayToTree(_ array: [Int?], _ index: Int) -> TreeNode? {
        if index >= array.count {
            return nil
        }
        
        guard let currentVal = array[index] else { return nil }
        print(currentVal)
        
        let currentNode = TreeNode(currentVal)
        currentNode.left = arrayToTree(array, (index + 1) * 2 - 1)
        currentNode.right = arrayToTree(array, (index + 1) * 2)
        
        return currentNode
    }
    
    
    
    
    
}
