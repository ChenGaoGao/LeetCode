//
//  ListNode.swift
//  PrimaryAlgorithms
//
//  Created by Gao on 2020/6/17.
//  Copyright © 2020 Gao. All rights reserved.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    
    class func arrayToListNode(_ array: [Int]) -> ListNode? {
        let root: ListNode = ListNode.init(0)
        var current = root
        for i in 0..<array.count {
            let nextNode: ListNode = ListNode.init(array[i])
            current.next = nextNode
            current = nextNode
        }
        return root.next;
    }
    
    
    class func listNodeToArray(_ root: ListNode?) -> [Int] {
        var array: [Int] = []
        
        var current: ListNode? = root
        while (current != nil) {
            array.append(current!.val)
            current = current!.next
        }
        return array;
    }
}
