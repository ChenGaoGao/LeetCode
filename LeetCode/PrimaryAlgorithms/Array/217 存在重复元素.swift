//
//  217 存在重复元素.swift
//  LeetCode
//
//  Created by Gao on 2020/10/27.
//  Copyright © 2020 Gao. All rights reserved.
//

import Foundation

// https://leetcode-cn.com/problems/contains-duplicate/

class Solution217 {
    class func solution() {
        let nums = [1,2,3,1]
        let solution = Solution217()
        print(solution.containsDuplicate(nums))
    }
    
    // Set 集合
    func containsDuplicate(_ nums: [Int]) -> Bool {        
        var numSet = Set<Int>()
        
        for num in nums {
            if numSet.contains(num) {
                return true
            }
            else {
                numSet.insert(num)
            }
        }

        return false
        
//        for num in nums {
//            numSet.insert(num)
//        }
//
//        return numSet.count < nums.count
    }
}
