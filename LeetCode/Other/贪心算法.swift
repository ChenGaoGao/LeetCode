//
//  贪心算法.swift
//  LeetCode
//
//  Created by Gao on 2020/11/20.
//  Copyright © 2020 Gao. All rights reserved.
//

import Foundation


class SolutionTanXin {
    class func solution() {
        let solution = SolutionTanXin()
        
        let resoult = solution.tanXin(sum: 9, element: 3)
        
//        let ss: NSMutableArray = []
        
        print(resoult)
    }
    
    func tanXin(sum: Int, element: Int) -> Int {
        if sum < element {
            return 0
        }
        
        var resoult = sum
        
        var surplus = sum
        
//        while surplus >= element {
//            surplus = surplus - element + 1
//            resoult = resoult + 1
//        }
        
        while surplus >= element {
            let m = surplus / element
            let n = surplus % element
            
            surplus = m + n
            resoult = resoult + m
        }
        
        return resoult
    }
}

