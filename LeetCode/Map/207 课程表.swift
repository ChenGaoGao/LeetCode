//
//  207 课程表.swift
//  LeetCode
//
//  Created by Gao on 2020/6/18.
//  Copyright © 2020 Gao. All rights reserved.
//

import Foundation


// https://leetcode-cn.com/problems/course-schedule/
// 本题可约化为： 课程安排图是否是 有向无环图(DAG)
// 通过 拓扑排序 判断此课程安排图是否是 有向无环图(DAG)
// 如果 拓扑排序 无法遍历完所有的结点，则意味着当前的图不是有向无环图
// 拓扑排序 https://www.jianshu.com/p/3347f54a3187

class Solution207 {
    class func solution() {
        let numCourses = 6
        let prerequisites = [[1,2], [1,4],
                             [2,4], [2,3],
                             [3,5], [4,5]]
        
        let solution = Solution207()
        print(solution.canFinish(numCourses, prerequisites))
    }
    
    
    
    // 广度优先(Breadth-First-Search, 缩写为BFS)
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        // 入度
        var ruduArray: [Int] = Array(repeating: 0, count: numCourses)
        
        // 统计每个节点的入度
        for array in prerequisites {
            ruduArray[array[0]] += 1
        }
        
        print(ruduArray)
        
        
        
        
        return false
    }
    
    
    
    
    
    
    
}
