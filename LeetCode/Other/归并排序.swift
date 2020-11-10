//
//  归并排序.swift
//  LeetCode
//
//  Created by Gao on 2020/11/10.
//  Copyright © 2020 Gao. All rights reserved.
//

import Foundation


class SolutionGuiBing {
    class func solution() {
        var array = [7,5,3,2,4,6,1]
        
        let solution = SolutionGuiBing()
        
        solution.sort(array: &array, left: 0, right: array.count - 1)
        
        print(array)
    }
    
    func sort(array: inout [Int], left: Int, right: Int) {
        if left >= right {
            return
        }
        
        let middle = (left + right) / 2
        print(left, right, middle)
        
        sort(array: &array, left: left, right: middle)
        sort(array: &array, left: middle + 1, right: right)
        merge(array: &array, left: left, middle: middle, right: right)
    }
    
    func merge(array: inout [Int], left: Int, middle: Int, right: Int) {
        var tempArray: [Int] = []

        var p1 = left
        var p2 = middle + 1
        
        while p1 <= middle && p2 <= right {
            if array[p2] < array[p1] {
                tempArray.append(array[p2])
                p2 += 1
            }
            else {
                tempArray.append(array[p1])
                p1 += 1
            }
        }
        
        while(p1 <= middle) {
            tempArray.append(array[p1])
            p1 += 1
        }
        while(p2 <= right) {
            tempArray.append(array[p2])
            p2 += 1
        }
        
        for i in 0..<tempArray.count {
            array[left + i] = tempArray[i]
        }
    }
}
