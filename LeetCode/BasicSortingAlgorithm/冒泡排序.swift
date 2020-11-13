//
//  冒泡排序.swift
//  LeetCode
//
//  Created by Gao on 2020/11/11.
//  Copyright © 2020 Gao. All rights reserved.
//

import Foundation


// 冒泡排序
//
// 基本思想：
//   比较相邻的元素，如果前一个比后一个大，交换之。

class SolutionBubbleSort {
    class func solution() {
        var array = [7,5,3,2,4,6,1]
        
        let solution = SolutionBubbleSort()
        
        solution.bubbleSort(array: &array)
        
        print(array)
    }
    
    
    func bubbleSort(array: inout [Int]) {
        for i in 0..<array.count {
            for j in 0..<array.count - 1 - i {
                if array[j] > array[j + 1] {
                    let temp = array[j]
                    array[j] = array[j + 1]
                    array[j + 1] = temp
                }
            }
        }
    }
}
