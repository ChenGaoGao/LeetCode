//
//  2 两数相加.swift
//  LeetCode
//
//  Created by Gao on 2020/6/17.
//  Copyright © 2020 Gao. All rights reserved.
//

import Foundation

// https://leetcode-cn.com/problems/add-two-numbers/

class Solution2 {
    class func solution() {
        let array1 = [2,4,3,1]
        let array2 = [5,6,4]
        
        let l1: ListNode? = ListNode.arrayToListNode(array1)
        let l2: ListNode? = ListNode.arrayToListNode(array2)
        
        let solution = Solution2()
        
        print(ListNode.listNodeToArray(l1))
        print(ListNode.listNodeToArray(l2))
        
        let sum = solution.addTwoNumbers(l1, l2)
        
        print(ListNode.listNodeToArray(sum))
    }
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let result = ListNode(0)
        var current: ListNode? = result
    
        var node1 = l1
        var node2 = l2
        var carray = 0
        
        while node1 != nil || node2 != nil {
            let x = node1 != nil ? node1!.val : 0
            let y = node2 != nil ? node2!.val : 0
            
            var val = x + y + carray
            carray = val / 10
            val = val % 10

            let node: ListNode? = ListNode(val)
            current!.next = node
            current = node
            
            node1 = node1?.next
            node2 = node2?.next
        }
        
        if carray == 1 {
            let node: ListNode? = ListNode(carray)
            current!.next = node
        }

        return result.next
    }
}
