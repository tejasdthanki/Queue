//
//  Queue.swift
//  Queue
//
//  Created by Tejas Thanki on 08/03/21.
//

import Foundation

class Queue<T>{
    var array = [T]()
    
    public var totalCount:Int{
        return array.count
    }
    
    public func enqueque(element:T){
        array.append(element)
    }
    
    public func dequeue() -> T?{
        if(array.isEmpty){
            return nil
        }else{
            return array.removeFirst()
        }
    }
    
    public var front: T?{
        return array.first
    }
}
