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
        let prerequisites: [[Int]] = [[2,1], [3,2],
                                      [4,1], [4,2],
                                      [5,3], [5,4]]
        
        let solution = Solution207()
        print(solution.canFinish1(numCourses, prerequisites))
    }
    
    
    
    // 广度优先(Breadth-First-Search, 缩写为BFS)
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        if numCourses <= 1 { return true }
        
        var myNumCourses = numCourses
        // 邻接表 将课程前置条件列表 转换 为 邻接表
        var adjacency: [[Int]] = Array(repeating: [], count: myNumCourses)
        // 入度
        var indegrees: [Int] = Array(repeating: 0, count: myNumCourses)
        
        for array in prerequisites {
            // 转化课程条件 为 邻接表
            adjacency[array[1]].append(array[0])
            // 统计每个节点的入度
            indegrees[array[0]] += 1
        }

        // 广度队列
        var queue: [Int] = []
        for i in 0..<myNumCourses {
            if indegrees[i] == 0 {
                queue.append(i)
            }
        }
        
        while !queue.isEmpty {
            let pre = queue.removeFirst()
            myNumCourses -= 1
            for item in adjacency[pre] {
                indegrees[item] -= 1
                if indegrees[item] == 0 {
                    queue.append(item)
                }
            }
        }

        return myNumCourses == 0
    }
    
    
    // 深度优先(Deep First Search, 缩写为DFS)
    func canFinish1(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        if numCourses <= 1 { return true }
        // 邻接表 将课程前置条件列表 转换 为 邻接表
        var adjacency: [[Int]] = Array(repeating: [], count: numCourses)
        // 标记 0: 未被 DFS 访问    -1: 已被其他节点启动的 DFS 访问   1: 已被当前节点启动的 DFS 访问
        var flags: [Int] = Array(repeating: 0, count: numCourses)
        
        for array in prerequisites {
            // 转化课程条件 为 邻接表
            adjacency[array[1]].append(array[0])
        }
        
        
        for i in 0..<numCourses {
            if !dfs(adjacency, &flags, i) {
                return false
            }
        }

        return true
    }
    
    func dfs(_ adjacency: [[Int]], _ flags:inout [Int], _ index: Int) -> Bool {
        if flags[index] == 1 { return false }
        if flags[index] == -1 { return true }
        flags[index] = 1
        
        for item in adjacency[index] {
            if !dfs(adjacency, &flags, item) {
                return false
            }
        }
        flags[index] = -1
        
        return true
    }
}
