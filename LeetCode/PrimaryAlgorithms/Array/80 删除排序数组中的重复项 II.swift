//
//  80 removeDuplicates.swift
//  PrimaryAlgorithms
//
//  Created by Gao on 2020/6/17.
//  Copyright © 2020 Gao. All rights reserved.
//

import Foundation


// https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array-ii/

class Solution80 {
    class func solution() {
        var nums = [0,0,1,1,1,1,2,3,3]
        let solution = Solution80()
        print(solution.removeDuplicates(&nums))
        print(nums)
    }
    
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 2 else {
            return nums.count
        }
        
        var index = 1
        for i in 2..<nums.count {
            if !(nums[index] == nums[index - 1] && nums[index] == nums[i])  {
                index += 1
                nums[index] = nums[i]

            }
        }
        
        return index + 1
    }
}
