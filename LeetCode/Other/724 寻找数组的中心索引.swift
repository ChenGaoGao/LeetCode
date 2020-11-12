//
//  724 寻找数组的中心索引.swift
//  LeetCode
//
//  Created by Gao on 2020/7/16.
//  Copyright © 2020 Gao. All rights reserved.
//

import Foundation

// https://leetcode-cn.com/problems/find-pivot-index/

class Solution724 {
    class func solution() {
        let solution = Solution724()
        let nums = [-1,-1,-1,-1,0,1]
        
        print(solution.pivotIndex(nums))
    }
    
    
    func pivotIndex(_ nums: [Int]) -> Int {
        guard nums.count > 2 else {
            return -1
        }
        
        var i = 0
        var j = nums.count - 1
        var left = nums[i]
        var right = nums[j]
        
        while i < j - 1 {
            print(left, right)
            if j - i == 2 && left == right {
                return i + 1
            }
            if j - i > 2 && left == right {
                i += 1
                left = left + nums[i]
            }
            
            
            if  right <= 0 && left < right {
                j -= 1
                right = right + nums[j]
            }
            if  left < right && 0 < right {
                i += 1
                left = left + nums[i]
            }
            
            
            if left > 0 && left > right {
                j -= 1
                right = right + nums[j]
            }
            if 0 >= left && left > right {
                i += 1
                left = left + nums[i]
            }
        }
        
        return -1
    }
}
