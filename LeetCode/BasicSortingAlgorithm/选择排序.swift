//
//  选择排序.swift
//  LeetCode
//
//  Created by Gao on 2020/11/13.
//  Copyright © 2020 Gao. All rights reserved.
//

import Foundation


// 选择排序
//
// 基本思想：
//   每一次遍历待排序的序列，记录最小（大）值的下标；
//   和待排序第一个元素进行比较，如果小（大）与待排序第一个元素，交换

class SolutionSelectSort {
    class func solution() {
        var array = [7,5,3,2,4,6,1]
        
        let solution = SolutionSelectSort()
        
        solution.selectSort(array: &array)
        
        print(array)
    }
    
    func selectSort(array: inout [Int]) {
        for i in 0..<array.count {
            var minIndex = i
            for j in i + 1..<array.count {
                if array[j] < array[minIndex] {
                    minIndex = j
                }
            }
            
            if minIndex > i {
                let temp = array[i]
                array[i] = array[minIndex]
                array[minIndex] = temp
            }
        }
    }
}
