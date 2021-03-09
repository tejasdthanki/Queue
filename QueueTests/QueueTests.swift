//
//  QueueTests.swift
//  QueueTests
//
//  Created by Tejas Thanki on 08/03/21.
//

import XCTest
@testable import Queue

class QueueTests: XCTestCase {

  
    func testEmpty(){
        let queue:Queue = Queue<Int>()
        XCTAssertTrue(queue.array.isEmpty)
        queue.enqueque(element: 2)
        XCTAssertEqual(queue.front, 2)
        XCTAssertFalse(queue.array.isEmpty)
        
        let queueList:QueueUsingLinkedList = QueueUsingLinkedList<Int>()
        XCTAssertTrue(queueList.isEmpty)
        queueList.enqueque(element: 2)
        XCTAssertEqual(queueList.rear?.data, 2)
        XCTAssertFalse(queueList.isEmpty)
    }
    
    func testEnqueue(){
        let queue:Queue = Queue<Int>()
        queue.enqueque(element: 2)
        queue.enqueque(element: 4)
        queue.enqueque(element: 5)
        XCTAssertEqual(queue.front, 2)
        XCTAssertEqual(queue.totalCount, 3)
        
        let queueList:QueueUsingLinkedList = QueueUsingLinkedList<Int>()
        queueList.enqueque(element: 2)
        queueList.enqueque(element: 4)
        queueList.enqueque(element: 5)
        XCTAssertEqual(queueList.front?.data, 2)
        XCTAssertEqual(queueList.count, 3)
    }
    
    func testDequeue(){
        let queue:Queue = Queue<Int>()
        XCTAssertNil(queue.dequeue())
        queue.enqueque(element: 2)
        queue.enqueque(element: 4)
        _ = queue.dequeue()
        _ = queue.dequeue()
        XCTAssertTrue(queue.array.isEmpty)
        
        let queueList:QueueUsingLinkedList = QueueUsingLinkedList<Int>()
        queueList.enqueque(element: 2)
        queueList.enqueque(element: 4)
        queueList.dequeue()
        queueList.dequeue()
        XCTAssertTrue(queueList.isEmpty)
        
        
    }
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
