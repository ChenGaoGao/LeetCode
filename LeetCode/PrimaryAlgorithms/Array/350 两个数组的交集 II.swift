//
//  350 两个数组的交集 II.swift
//  LeetCode
//
//  Created by Gao on 2020/10/27.
//  Copyright © 2020 Gao. All rights reserved.
//

import Foundation

// https://leetcode-cn.com/problems/intersection-of-two-arrays-ii/

class Solution350 {
    class func solution() {
        let nums1 = [4,9,9,5]
        let nums2 = [9,4,9,8,4]
        let solution = Solution350()
        print(solution.intersect(nums1, nums2))
    }
    
    
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var dic = [Int: Int]()
        var result = [Int]()

        for num in nums1 {
//            if let count = dic[num] {
//                dic[num] = count + 1
//            }
//            else {
//                dic[num] = 1
//            }

            dic[num] = (dic[num] ?? 0) + 1
        }

        for num in nums2 {
            if let count = dic[num], count > 0 {
                result.append(num)
                dic[num] = count - 1
            }
        }

        return result
        
        
        // 别人的方法，但是耗时间很多
//        var existNums:[Int] = []
//
//        if nums1.count > nums2.count {
//            var tempNums = nums1
//            for i in 0 ..< nums2.count {
//                if let index = tempNums.firstIndex(of: nums2[i]) {
//                    print(index)
//                    tempNums.remove(at: index)
//                    existNums.append(nums2[i])
//                }
//            }
//        }else {
//            var tempNums = nums2
//            for i in 0 ..< nums1.count {
//                print(tempNums, nums1)
//                if let index = tempNums.firstIndex(of: nums1[i]) {
//                    print(index)
//                    tempNums.remove(at: index)
//                    existNums.append(nums1[i])
//                }
//            }
//        }
//        return existNums
    }
}
