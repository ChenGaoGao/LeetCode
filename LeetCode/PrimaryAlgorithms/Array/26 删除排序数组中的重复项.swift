//
//  26 removeDuplicates.swift
//  PrimaryAlgorithms
//
//  Created by Gao on 2020/6/17.
//  Copyright © 2020 Gao. All rights reserved.
//

import Foundation

// https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array/

class Solution26 {
    class func solution() {
        var nums = [1,1,2]
        let solution = Solution26()
        print(solution.removeDuplicates(&nums))
    }
    
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        let count = nums.count
        if count <= 1 {
            return count
        }
        
        var i = 0
        for j in 1..<count {
            if nums[i] != nums[j]  {
                i += 1
                nums[i] = nums[j]
            }
        }
        
        return i + 1
    }
}
