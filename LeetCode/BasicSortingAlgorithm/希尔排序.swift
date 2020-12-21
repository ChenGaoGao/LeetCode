//
//  希尔排序.swift
//  LeetCode
//
//  Created by Gao on 2020/11/13.
//  Copyright © 2020 Gao. All rights reserved.
//

import Foundation


// 希尔排序(又叫 缩小增量排序)
//
//   1959年Shell发明，第一个突破O(n2)的排序算法，是简单插入排序的改进版
// 基本思想：
//   记录按下标的一定增量分组，对每组使用直接插入排序算法排序；
//   (若数组总数为奇数个，那么第一次循环的增量数组中的，第一组数据将有3个数字一起；
//    增量分组，并非分出来每一组数据的个数都要相等。)
//   随着增量逐渐减少，每组包含的关键词越来越多，当增量减至1时，整个文件恰被分成一组，算法便终止。



class SolutionShellSort {
    class func solution() {
        var array = [7,5,3,2,9,4,6,8,1]
        
        let solution = SolutionShellSort()
        
        solution.shellSort(array: &array)
        
        print(array)
    }
    
    
    func shellSort(array: inout [Int]) {
        var gap: Int = array.count / 2
        
        while gap > 0 {
            print(gap)
            
            
            
            
            
            
            
            
            gap = gap / 2
        }
        
        
    }
}
