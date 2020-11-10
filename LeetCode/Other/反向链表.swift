//
//  反向链表.swift
//  LeetCode
//
//  Created by Gao on 2020/11/9.
//  Copyright © 2020 Gao. All rights reserved.
//

import Foundation


class SolutionFan {
    class func solution() {
        let array1 = [1,2,3,4,5,6,7]
        
        let firstNode: ListNode? = ListNode.arrayToListNode(array1)
        
        let solution = SolutionFan()
        
        print(ListNode.listNodeToArray(firstNode))
        
        let fanList = solution.fan3(firstNode, nil)
        
        print(ListNode.listNodeToArray(fanList))
    }
    
    func fan(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        let newHead = fan(head?.next)

        head?.next?.next = head
        head?.next = nil
        return newHead
    }
    
    func fan2(_ head: ListNode?) -> ListNode? {
        var preNode: ListNode? = nil
        var curNode: ListNode? = head
        
        while curNode != nil {
            let tempNode = curNode?.next
            curNode?.next = preNode
            preNode = curNode
            curNode = tempNode
        }
        
        return preNode
    }
    
    func fan3(_ node: ListNode?, _ lastNode: ListNode?) -> ListNode? {

        if node == nil {
            return lastNode
        }
        let temp = fan3(node?.next, node)
        
        node?.next = lastNode
        lastNode?.next = nil
        
        return temp
    }
}
