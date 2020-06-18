//
//  22 括号生成.swift
//  LeetCode
//
//  Created by Gao on 2020/6/17.
//  Copyright © 2020 Gao. All rights reserved.
//

import Foundation

// https://leetcode-cn.com/problems/generate-parentheses/

class Solution22 {
    class func solution() {
        let solution = Solution22()
        
        print(solution.generateParenthesis(5))
    }
    
    
    func generateParenthesis(_ n: Int) -> [String] {
        var resoult: [String] = []
        
        generateAll(n, n, "", &resoult)

        return resoult
    }
    

    func generateAll(_ left: Int, _ right: Int, _ current: String, _ resoult:inout [String]) {
        if left == 0 && right == 0 {
            resoult.append(current)
            
            return
        }
        
        if 0 < left  {
            generateAll(left - 1, right, current + "(", &resoult)
        }
        if left < right {
            generateAll(left, right - 1, current + ")", &resoult)
        }
    }
    
}
