//
//  插入排序.swift
//  LeetCode
//
//  Created by Gao on 2020/11/13.
//  Copyright © 2020 Gao. All rights reserved.
//

import Foundation

// 插入排序
//
// 基本思想：
//   通过构建有序序列，对于未排序数据，在已排序序列中从后向前扫描，找到相应位置并插入。


class SolutionInsertionSort {
    class func solution() {
        var array = [7,5,3,2,4,6,8,1]
        
        let solution = SolutionInsertionSort()
        
        solution.insertionSort(array: &array)
//        solution.insertionSort2(array: &array)
        
        print(array)
    }
    
    
    func insertionSort(array: inout [Int]) {
        for i in 1..<array.count {
            let sortNum = array[i]
            for j in 0..<i {
                print(sortNum, array[i - 1 - j])
                if sortNum < array[i - 1 - j] {
                    array[i - j] = array[i - 1 - j]
                    array[i - 1 - j] = sortNum
                }
                else {
                    break
                }
            }
            print(" ")
        }
    }
    
    func insertionSort2(array: inout [Int]) {
        for i in 1..<array.count {
            let sortNum = array[i]
            var preIndex = i - 1
            
            while preIndex >= 0 {
                print(sortNum, array[preIndex])
                if sortNum < array[preIndex] {
                    array[preIndex + 1] = array[preIndex]
                    array[preIndex] = sortNum
                }
                else {
                    break
                }
                
                preIndex -= 1
            }
            print(" ")
        }
    }
}
