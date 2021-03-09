//
//  QueueUsingLinkedList.swift
//  Queue
//
//  Created by Tejas Thanki on 08/03/21.
//

import Foundation

class QueueUsingLinkedList<T>{
    var rear:Node<T>? = nil
    var front:Node<T>? = nil
    var count:Int = 0
    public var isEmpty:Bool{
        return (rear == nil && front == nil)
    }
    
    public func enqueque(element:T){
        let newNode = Node(data: element)
        newNode.next = nil
        count = count + 1
        if(isEmpty){
            rear = newNode
            front = newNode
            return
        }
        rear?.next = newNode
        rear = newNode
    }
    
    public func dequeue(){
        var tempNode = front
        if(tempNode == nil){
            return
        }
        if(front == rear){
            front = nil
            rear = nil
        }else{
            front = front?.next
        }
        tempNode = nil
        count = count - 1
    }
}
